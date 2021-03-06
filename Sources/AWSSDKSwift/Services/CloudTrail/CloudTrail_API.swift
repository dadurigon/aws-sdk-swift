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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import NIO

/**
Client object for interacting with AWS CloudTrail service.

AWS CloudTrail This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail. CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.  As an alternative to the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the Tools for Amazon Web Services page.  See the AWS CloudTrail User Guide for information about the data that is included with each AWS API call listed in the log files.
*/
public struct CloudTrail {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CloudTrail client
    /// - parameters:
    ///     - accessKeyId: Public access key provided by AWS
    ///     - secretAccessKey: Private access key provided by AWS
    ///     - sessionToken: Token provided by STS.AssumeRole() which allows access to another AWS account
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - retryPolicy: Object returning whether retries should be attempted. Possible options are NoRetry(), ExponentialRetry() or JitterRetry()
    ///     - middlewares: Array of middlewares to apply to requests and responses
    ///     - httpClientProvider: HTTPClient to use. Use `createNew` if the client should manage its own HTTPClient.
    public init(
        accessKeyId: String? = nil,
        secretAccessKey: String? = nil,
        sessionToken: String? = nil,
        region: AWSSDKSwiftCore.Region? = nil,
        partition: AWSSDKSwiftCore.Partition = .aws,
        endpoint: String? = nil,
        retryPolicy: RetryPolicy = JitterRetry(),
        middlewares: [AWSServiceMiddleware] = [],
        httpClientProvider: AWSClient.HTTPClientProvider = .createNew
    ) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            partition: region?.partition ?? partition,
            amzTarget: "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
            service: "cloudtrail",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2013-11-01",
            endpoint: endpoint,
            serviceEndpoints: ["us-gov-east-1": "cloudtrail.us-gov-east-1.amazonaws.com", "us-gov-west-1": "cloudtrail.us-gov-west-1.amazonaws.com"],
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [CloudTrailErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Adds one or more tags to a trail, up to a limit of 50. Overwrites an existing tag's value when a new value is specified for an existing tag key. Tag key names must be unique for a trail; you cannot have two keys with the same name but different values. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all AWS Regions only from the Region in which the trail was created (also known as its home region).
    public func addTags(_ input: AddTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTagsResponse> {
        return client.send(operation: "AddTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. 
    public func createTrail(_ input: CreateTrailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTrailResponse> {
        return client.send(operation: "CreateTrail", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a trail. This operation must be called from the region in which the trail was created. DeleteTrail cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    public func deleteTrail(_ input: DeleteTrailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTrailResponse> {
        return client.send(operation: "DeleteTrail", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves settings for one or more trails associated with the current region for your account.
    public func describeTrails(_ input: DescribeTrailsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrailsResponse> {
        return client.send(operation: "DescribeTrails", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:   If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.   If your event selector includes management events.   If your event selector includes data events, the Amazon S3 objects or AWS Lambda functions that you are logging for data events.   For more information, see Logging Data and Management Events for Trails  in the AWS CloudTrail User Guide.
    public func getEventSelectors(_ input: GetEventSelectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetEventSelectorsResponse> {
        return client.send(operation: "GetEventSelectors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Describes the settings for the Insights event selectors that you configured for your trail. GetInsightSelectors shows if CloudTrail Insights event logging is enabled on the trail, and if it is, which insight types are enabled. If you run GetInsightSelectors on a trail that does not have Insights events enabled, the operation throws the exception InsightNotEnabledException  For more information, see Logging CloudTrail Insights Events for Trails  in the AWS CloudTrail User Guide.
    public func getInsightSelectors(_ input: GetInsightSelectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetInsightSelectorsResponse> {
        return client.send(operation: "GetInsightSelectors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns settings information for a specified trail.
    public func getTrail(_ input: GetTrailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTrailResponse> {
        return client.send(operation: "GetTrail", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.
    public func getTrailStatus(_ input: GetTrailStatusRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTrailStatusResponse> {
        return client.send(operation: "GetTrailStatus", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.  CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key. 
    public func listPublicKeys(_ input: ListPublicKeysRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPublicKeysResponse> {
        return client.send(operation: "ListPublicKeys", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the tags for the trail in the current region.
    public func listTags(_ input: ListTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists trails that are in the current account.
    public func listTrails(_ input: ListTrailsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTrailsResponse> {
        return client.send(operation: "ListTrails", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Looks up management events or CloudTrail Insights events that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:   AWS access key   Event ID   Event name   Event source   Read only   Resource name   Resource type   User name   Lookup supports the following attributes for Insights events:   Event ID   Event name   Event source   All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.  The rate of lookup requests is limited to two per second per account. If this limit is exceeded, a throttling error occurs. 
    public func lookupEvents(_ input: LookupEventsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<LookupEventsResponse> {
        return client.send(operation: "LookupEvents", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures an event selector for your trail. Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events.  When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.  Example   You create an event selector for a trail and specify that you want write-only events.   The EC2 GetConsoleOutput and RunInstances API operations occur in your account.   CloudTrail evaluates whether the events match your event selectors.   The RunInstances is a write-only event and it matches your event selector. The trail logs the event.   The GetConsoleOutput is a read-only event but it doesn't match your event selector. The trail doesn't log the event.    The PutEventSelectors operation must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown. You can configure up to five event selectors for each trail. For more information, see Logging Data and Management Events for Trails  and Limits in AWS CloudTrail in the AWS CloudTrail User Guide.
    public func putEventSelectors(_ input: PutEventSelectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutEventSelectorsResponse> {
        return client.send(operation: "PutEventSelectors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail. You also use PutInsightSelectors to turn off Insights event logging, by passing an empty list of insight types. In this release, only ApiCallRateInsight is supported as an Insights selector.
    public func putInsightSelectors(_ input: PutInsightSelectorsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutInsightSelectorsResponse> {
        return client.send(operation: "PutInsightSelectors", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the specified tags from a trail.
    public func removeTags(_ input: RemoveTagsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RemoveTagsResponse> {
        return client.send(operation: "RemoveTags", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.
    public func startLogging(_ input: StartLoggingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartLoggingResponse> {
        return client.send(operation: "StartLogging", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an InvalidHomeRegionException will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.
    public func stopLogging(_ input: StopLoggingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLoggingResponse> {
        return client.send(operation: "StopLogging", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. UpdateTrail must be called from the region in which the trail was created; otherwise, an InvalidHomeRegionException is thrown.
    public func updateTrail(_ input: UpdateTrailRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateTrailResponse> {
        return client.send(operation: "UpdateTrail", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
