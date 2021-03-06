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
Client object for interacting with AWS IoTAnalytics service.

AWS IoT Analytics allows you to collect large amounts of device data, process messages, and store them. You can then query the data and run sophisticated analytics on it. AWS IoT Analytics enables advanced data exploration through integration with Jupyter Notebooks and data visualization through integration with Amazon QuickSight. Traditional analytics and business intelligence tools are designed to process structured data. IoT data often comes from devices that record noisy processes (such as temperature, motion, or sound). As a result the data from these devices can have significant gaps, corrupted messages, and false readings that must be cleaned up before analysis can occur. Also, IoT data is often only meaningful in the context of other data from external sources.  AWS IoT Analytics automates the steps required to analyze data from IoT devices. AWS IoT Analytics filters, transforms, and enriches IoT data before storing it in a time-series data store for analysis. You can set up the service to collect only the data you need from your devices, apply mathematical transforms to process the data, and enrich the data with device-specific metadata such as device type and location before storing it. Then, you can analyze your data by running queries using the built-in SQL query engine, or perform more complex analytics and machine learning inference. AWS IoT Analytics includes pre-built models for common IoT use cases so you can answer questions like which devices are about to fail or which customers are at risk of abandoning their wearable devices.
*/
public struct IoTAnalytics {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the IoTAnalytics client
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
            service: "iotanalytics",
            serviceProtocol: .restjson,
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [IoTAnalyticsErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Sends messages to a channel.
    public func batchPutMessage(_ input: BatchPutMessageRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BatchPutMessageResponse> {
        return client.send(operation: "BatchPutMessage", path: "/messages/batch", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Cancels the reprocessing of data through the pipeline.
    public func cancelPipelineReprocessing(_ input: CancelPipelineReprocessingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelPipelineReprocessingResponse> {
        return client.send(operation: "CancelPipelineReprocessing", path: "/pipelines/{pipelineName}/reprocessing/{reprocessingId}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Creates a channel. A channel collects data from an MQTT topic and archives the raw, unprocessed messages before publishing the data to a pipeline.
    public func createChannel(_ input: CreateChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelResponse> {
        return client.send(operation: "CreateChannel", path: "/channels", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a data set. A data set stores data retrieved from a data store by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application). This operation creates the skeleton of a data set. The data set can be populated manually by calling "CreateDatasetContent" or automatically according to a "trigger" you specify.
    public func createDataset(_ input: CreateDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetResponse> {
        return client.send(operation: "CreateDataset", path: "/datasets", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates the content of a data set by applying a "queryAction" (a SQL query) or a "containerAction" (executing a containerized application).
    public func createDatasetContent(_ input: CreateDatasetContentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatasetContentResponse> {
        return client.send(operation: "CreateDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a data store, which is a repository for messages.
    public func createDatastore(_ input: CreateDatastoreRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatastoreResponse> {
        return client.send(operation: "CreateDatastore", path: "/datastores", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a pipeline. A pipeline consumes messages from a channel and allows you to process the messages before storing them in a data store. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
    public func createPipeline(_ input: CreatePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePipelineResponse> {
        return client.send(operation: "CreatePipeline", path: "/pipelines", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified channel.
    @discardableResult public func deleteChannel(_ input: DeleteChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteChannel", path: "/channels/{channelName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified data set. You do not have to delete the content of the data set before you perform this operation.
    @discardableResult public func deleteDataset(_ input: DeleteDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDataset", path: "/datasets/{datasetName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the content of the specified data set.
    @discardableResult public func deleteDatasetContent(_ input: DeleteDatasetContentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified data store.
    @discardableResult public func deleteDatastore(_ input: DeleteDatastoreRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteDatastore", path: "/datastores/{datastoreName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Deletes the specified pipeline.
    @discardableResult public func deletePipeline(_ input: DeletePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePipeline", path: "/pipelines/{pipelineName}", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Retrieves information about a channel.
    public func describeChannel(_ input: DescribeChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelResponse> {
        return client.send(operation: "DescribeChannel", path: "/channels/{channelName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about a data set.
    public func describeDataset(_ input: DescribeDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasetResponse> {
        return client.send(operation: "DescribeDataset", path: "/datasets/{datasetName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about a data store.
    public func describeDatastore(_ input: DescribeDatastoreRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatastoreResponse> {
        return client.send(operation: "DescribeDatastore", path: "/datastores/{datastoreName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the current settings of the AWS IoT Analytics logging options.
    public func describeLoggingOptions(_ input: DescribeLoggingOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLoggingOptionsResponse> {
        return client.send(operation: "DescribeLoggingOptions", path: "/logging", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about a pipeline.
    public func describePipeline(_ input: DescribePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePipelineResponse> {
        return client.send(operation: "DescribePipeline", path: "/pipelines/{pipelineName}", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves the contents of a data set as pre-signed URIs.
    public func getDatasetContent(_ input: GetDatasetContentRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatasetContentResponse> {
        return client.send(operation: "GetDatasetContent", path: "/datasets/{datasetName}/content", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of channels.
    public func listChannels(_ input: ListChannelsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListChannelsResponse> {
        return client.send(operation: "ListChannels", path: "/channels", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists information about data set contents that have been created.
    public func listDatasetContents(_ input: ListDatasetContentsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetContentsResponse> {
        return client.send(operation: "ListDatasetContents", path: "/datasets/{datasetName}/contents", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves information about data sets.
    public func listDatasets(_ input: ListDatasetsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatasetsResponse> {
        return client.send(operation: "ListDatasets", path: "/datasets", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of data stores.
    public func listDatastores(_ input: ListDatastoresRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatastoresResponse> {
        return client.send(operation: "ListDatastores", path: "/datastores", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Retrieves a list of pipelines.
    public func listPipelines(_ input: ListPipelinesRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPipelinesResponse> {
        return client.send(operation: "ListPipelines", path: "/pipelines", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Lists the tags (metadata) which you have assigned to the resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Sets or updates the AWS IoT Analytics logging options. Note that if you update the value of any loggingOptions field, it takes up to one minute for the change to take effect. Also, if you change the policy attached to the role you specified in the roleArn field (for example, to correct an invalid policy) it takes up to 5 minutes for that change to take effect. 
    @discardableResult public func putLoggingOptions(_ input: PutLoggingOptionsRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutLoggingOptions", path: "/logging", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Simulates the results of running a pipeline activity on a message payload.
    public func runPipelineActivity(_ input: RunPipelineActivityRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunPipelineActivityResponse> {
        return client.send(operation: "RunPipelineActivity", path: "/pipelineactivities/run", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Retrieves a sample of messages from the specified channel ingested during the specified timeframe. Up to 10 messages can be retrieved.
    public func sampleChannelData(_ input: SampleChannelDataRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SampleChannelDataResponse> {
        return client.send(operation: "SampleChannelData", path: "/channels/{channelName}/sample", httpMethod: "GET", input: input, on: eventLoop)
    }

    ///  Starts the reprocessing of raw message data through the pipeline.
    public func startPipelineReprocessing(_ input: StartPipelineReprocessingRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPipelineReprocessingResponse> {
        return client.send(operation: "StartPipelineReprocessing", path: "/pipelines/{pipelineName}/reprocessing", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the given tags (metadata) from the resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags", httpMethod: "DELETE", input: input, on: eventLoop)
    }

    ///  Updates the settings of a channel.
    @discardableResult public func updateChannel(_ input: UpdateChannelRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateChannel", path: "/channels/{channelName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the settings of a data set.
    @discardableResult public func updateDataset(_ input: UpdateDatasetRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateDataset", path: "/datasets/{datasetName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the settings of a data store.
    @discardableResult public func updateDatastore(_ input: UpdateDatastoreRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdateDatastore", path: "/datastores/{datastoreName}", httpMethod: "PUT", input: input, on: eventLoop)
    }

    ///  Updates the settings of a pipeline. You must specify both a channel and a datastore activity and, optionally, as many as 23 additional activities in the pipelineActivities array.
    @discardableResult public func updatePipeline(_ input: UpdatePipelineRequest, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "UpdatePipeline", path: "/pipelines/{pipelineName}", httpMethod: "PUT", input: input, on: eventLoop)
    }
}
