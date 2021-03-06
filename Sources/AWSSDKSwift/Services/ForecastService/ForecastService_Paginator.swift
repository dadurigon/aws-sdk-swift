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

extension ForecastService {

    ///  Returns a list of dataset groups created using the CreateDatasetGroup operation. For each dataset group, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the dataset group ARN with the DescribeDatasetGroup operation.
    public func listDatasetGroupsPaginator(
        _ input: ListDatasetGroupsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatasetGroupsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetGroups, tokenKey: \ListDatasetGroupsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of dataset import jobs created using the CreateDatasetImportJob operation. For each import job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribeDatasetImportJob operation. You can filter the list by providing an array of Filter objects.
    public func listDatasetImportJobsPaginator(
        _ input: ListDatasetImportJobsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatasetImportJobsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasetImportJobs, tokenKey: \ListDatasetImportJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of datasets created using the CreateDataset operation. For each dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned. To retrieve the complete set of properties, use the ARN with the DescribeDataset operation.
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatasetsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listDatasets, tokenKey: \ListDatasetsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of forecast export jobs created using the CreateForecastExportJob operation. For each forecast export job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, use the ARN with the DescribeForecastExportJob operation. You can filter the list using an array of Filter objects.
    public func listForecastExportJobsPaginator(
        _ input: ListForecastExportJobsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListForecastExportJobsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listForecastExportJobs, tokenKey: \ListForecastExportJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of forecasts created using the CreateForecast operation. For each forecast, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the DescribeForecast operation. You can filter the list using an array of Filter objects.
    public func listForecastsPaginator(
        _ input: ListForecastsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListForecastsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listForecasts, tokenKey: \ListForecastsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Returns a list of predictors created using the CreatePredictor operation. For each predictor, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribePredictor operation. You can filter the list using an array of Filter objects.
    public func listPredictorsPaginator(
        _ input: ListPredictorsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListPredictorsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listPredictors, tokenKey: \ListPredictorsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension ForecastService.ListDatasetGroupsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ForecastService.ListDatasetGroupsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ForecastService.ListDatasetImportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ForecastService.ListDatasetImportJobsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ForecastService.ListDatasetsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ForecastService.ListDatasetsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ForecastService.ListForecastExportJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ForecastService.ListForecastExportJobsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ForecastService.ListForecastsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ForecastService.ListForecastsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

extension ForecastService.ListPredictorsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> ForecastService.ListPredictorsRequest {
        return .init(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}


