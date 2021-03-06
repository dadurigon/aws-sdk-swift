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

import NIO

//MARK: Paginators

extension Lambda {

    ///  Returns a list of aliases for a Lambda function.
    public func listAliasesPaginator(
        _ input: ListAliasesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListAliasesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listAliases, tokenKey: \ListAliasesResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Lists event source mappings. Specify an EventSourceArn to only show event source mappings for a single event source.
    public func listEventSourceMappingsPaginator(
        _ input: ListEventSourceMappingsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListEventSourceMappingsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listEventSourceMappings, tokenKey: \ListEventSourceMappingsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves a list of configurations for asynchronous invocation for a function. To configure options for asynchronous invocation, use PutFunctionEventInvokeConfig.
    public func listFunctionEventInvokeConfigsPaginator(
        _ input: ListFunctionEventInvokeConfigsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFunctionEventInvokeConfigsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFunctionEventInvokeConfigs, tokenKey: \ListFunctionEventInvokeConfigsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50 functions per call. Set FunctionVersion to ALL to include all published versions of each function in addition to the unpublished version. To get more information about a function or version, use GetFunction.
    public func listFunctionsPaginator(
        _ input: ListFunctionsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListFunctionsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listFunctions, tokenKey: \ListFunctionsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Lists the versions of an AWS Lambda layer. Versions that have been deleted aren't listed. Specify a runtime identifier to list only versions that indicate that they're compatible with that runtime.
    public func listLayerVersionsPaginator(
        _ input: ListLayerVersionsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLayerVersionsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLayerVersions, tokenKey: \ListLayerVersionsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Lists AWS Lambda layers and shows information about the latest version of each. Specify a runtime identifier to list only layers that indicate that they're compatible with that runtime.
    public func listLayersPaginator(
        _ input: ListLayersRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLayersResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listLayers, tokenKey: \ListLayersResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Retrieves a list of provisioned concurrency configurations for a function.
    public func listProvisionedConcurrencyConfigsPaginator(
        _ input: ListProvisionedConcurrencyConfigsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListProvisionedConcurrencyConfigsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listProvisionedConcurrencyConfigs, tokenKey: \ListProvisionedConcurrencyConfigsResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of versions, with the version-specific configuration of each. Lambda returns up to 50 versions per call.
    public func listVersionsByFunctionPaginator(
        _ input: ListVersionsByFunctionRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListVersionsByFunctionResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listVersionsByFunction, tokenKey: \ListVersionsByFunctionResponse.nextMarker, on: eventLoop, onPage: onPage)
    }

}

extension Lambda.ListAliasesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListAliasesRequest {
        return .init(
            functionName: self.functionName,
            functionVersion: self.functionVersion,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListEventSourceMappingsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListEventSourceMappingsRequest {
        return .init(
            eventSourceArn: self.eventSourceArn,
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListFunctionEventInvokeConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListFunctionEventInvokeConfigsRequest {
        return .init(
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListFunctionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListFunctionsRequest {
        return .init(
            functionVersion: self.functionVersion,
            marker: token,
            masterRegion: self.masterRegion,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListLayerVersionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListLayerVersionsRequest {
        return .init(
            compatibleRuntime: self.compatibleRuntime,
            layerName: self.layerName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListLayersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListLayersRequest {
        return .init(
            compatibleRuntime: self.compatibleRuntime,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListProvisionedConcurrencyConfigsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListProvisionedConcurrencyConfigsRequest {
        return .init(
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}

extension Lambda.ListVersionsByFunctionRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Lambda.ListVersionsByFunctionRequest {
        return .init(
            functionName: self.functionName,
            marker: token,
            maxItems: self.maxItems
        )

    }
}


