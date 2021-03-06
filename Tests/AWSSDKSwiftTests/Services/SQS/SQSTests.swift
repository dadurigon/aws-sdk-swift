//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import XCTest
@testable import AWSSQS

// testing query service

class SQSTests: XCTestCase {

    let sqs = SQS(
        accessKeyId: TestEnvironment.accessKeyId,
        secretAccessKey: TestEnvironment.secretAccessKey,
        region: .useast1,
        endpoint: TestEnvironment.getEndPoint(environment: "SQS_ENDPOINT", default: "http://localhost:4566"),
        middlewares: TestEnvironment.middlewares,
        httpClientProvider: .createNew
    )

    override class func setUp() {
        if TestEnvironment.isUsingLocalstack {
            print("Connecting to Localstack")
        } else {
            print("Connecting to AWS")
        }
    }

    /// create SQS queue with supplied name and run supplied closure
    func testQueue(name: String, body: @escaping (String) -> EventLoopFuture<Void>) -> EventLoopFuture<Void> {
        let eventLoop = self.sqs.client.eventLoopGroup.next()
        var queueUrl : String? = nil
        
        let request = SQS.CreateQueueRequest(queueName: name)
        return sqs.createQueue(request)
            .flatMapThrowing { response in
                queueUrl = try XCTUnwrap(response.queueUrl)
                return queueUrl!
        }
        .flatMap(body)
        .flatAlways { (_) -> EventLoopFuture<Void> in
            if let queueUrl = queueUrl {
                let request = SQS.DeleteQueueRequest(queueUrl: queueUrl)
                return self.sqs.deleteQueue(request)
            } else {
                return eventLoop.makeSucceededFuture(())
            }
        }
    }
    
    func testSendReceiveAndDelete(name: String, messageBody: String) -> EventLoopFuture<Void> {
        return testQueue(name: name) { queueUrl in
            let request = SQS.SendMessageRequest(messageBody: messageBody, queueUrl: queueUrl)
            return self.sqs.sendMessage(request)
                .flatMapThrowing { (response) throws -> String in
                    let messageId = try XCTUnwrap(response.messageId)
                    return messageId
            }
            .flatMap { messageId -> EventLoopFuture<(SQS.ReceiveMessageResult, String)> in
                let request = SQS.ReceiveMessageRequest(maxNumberOfMessages: 10, queueUrl: queueUrl)
                return self.sqs.receiveMessage(request).map { ($0, messageId )}
            }
            .flatMapThrowing { (result, messageId) -> String in
                let message = try XCTUnwrap(result.messages?.first)
                XCTAssertEqual(message.messageId, messageId)
                XCTAssertEqual(message.body, messageBody)
                let receiptHandle = try XCTUnwrap(message.receiptHandle)
                return receiptHandle
            }
            .flatMap { receiptHandle -> EventLoopFuture<Void> in
                let request = SQS.DeleteMessageRequest(queueUrl: queueUrl, receiptHandle: receiptHandle)
                return self.sqs.deleteMessage(request).map {_ in }
            }
        }
    }
    
    //MARK: TESTS

    func testSendReceiveAndDelete() {
        let name = TestEnvironment.generateResourceName()
        let response = testSendReceiveAndDelete(name: name, messageBody: "Testing, testing,1,2,1,2")
        XCTAssertNoThrow(try response.wait())
    }

    func testGetQueueAttributes() {
        let name = TestEnvironment.generateResourceName()
        let response = testQueue(name: name) { queueUrl in
            let request = SQS.GetQueueAttributesRequest(attributeNames: [.queuearn], queueUrl: queueUrl)
            return self.sqs.getQueueAttributes(request)
                .map { response in
                    XCTAssertNotNil(response.attributes?[.queuearn])
            }
        }
        XCTAssertNoThrow(try response.wait())
    }

    func testTestPercentEncodedCharacters() {
        let name = TestEnvironment.generateResourceName()
        let response = testSendReceiveAndDelete(name: name, messageBody: "!@#$%^&*()-=_+[]{};':\",.<>\\|`~éñà")
        XCTAssertNoThrow(try response.wait())
    }

    func testSendBatch() {
        // tests decoding of empty xml arrays
        let name = TestEnvironment.generateResourceName()
        let response = testQueue(name: name) { queueUrl in
            let messageBody = "Testing, testing,1,2,1,2"
            let request = SQS.SendMessageBatchRequest(entries: [.init(id:"msg1", messageBody: messageBody)], queueUrl: queueUrl)
            return self.sqs.sendMessageBatch(request).map { _ in }
        }
        XCTAssertNoThrow(try response.wait())
    }


    static var allTests: [(String, (SQSTests) -> () throws -> Void)] {
        return [
            ("testSendReceiveAndDelete", testSendReceiveAndDelete),
            ("testGetQueueAttributes", testGetQueueAttributes),
            ("testTestPercentEncodedCharacters", testTestPercentEncodedCharacters),
            ("testSendBatch", testSendBatch),
        ]
    }
}
