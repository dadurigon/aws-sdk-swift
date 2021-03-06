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
Client object for interacting with AWS CodePipeline service.

AWS CodePipeline  Overview  This is the AWS CodePipeline API Reference. This guide provides descriptions of the actions and data types for AWS CodePipeline. Some functionality for your pipeline can only be configured through the API. For more information, see the AWS CodePipeline User Guide. You can use the AWS CodePipeline API to work with pipelines, stages, actions, and transitions.  Pipelines are models of automated release processes. Each pipeline is uniquely named, and consists of stages, actions, and transitions.  You can work with pipelines by calling:    CreatePipeline, which creates a uniquely named pipeline.    DeletePipeline, which deletes the specified pipeline.    GetPipeline, which returns information about the pipeline structure and pipeline metadata, including the pipeline Amazon Resource Name (ARN).    GetPipelineExecution, which returns information about a specific execution of a pipeline.    GetPipelineState, which returns information about the current state of the stages and actions of a pipeline.    ListActionExecutions, which returns action-level details for past executions. The details include full stage and action-level details, including individual action duration, status, any errors that occurred during the execution, and input and output artifact location details.    ListPipelines, which gets a summary of all of the pipelines associated with your account.    ListPipelineExecutions, which gets a summary of the most recent executions for a pipeline.    StartPipelineExecution, which runs the most recent revision of an artifact through the pipeline.    StopPipelineExecution, which stops the specified pipeline execution from continuing through the pipeline.    UpdatePipeline, which updates a pipeline with edits or changes to the structure of the pipeline.   Pipelines include stages. Each stage contains one or more actions that must complete before the next stage begins. A stage results in success or failure. If a stage fails, the pipeline stops at that stage and remains stopped until either a new version of an artifact appears in the source location, or a user takes action to rerun the most recent artifact through the pipeline. You can call GetPipelineState, which displays the status of a pipeline, including the status of stages in the pipeline, or GetPipeline, which returns the entire structure of the pipeline, including the stages of that pipeline. For more information about the structure of stages and actions, see AWS CodePipeline Pipeline Structure Reference. Pipeline stages include actions that are categorized into categories such as source or build actions performed in a stage of a pipeline. For example, you can use a source action to import artifacts into a pipeline from a source such as Amazon S3. Like stages, you do not work with actions directly in most cases, but you do define and interact with actions when working with pipeline operations such as CreatePipeline and GetPipelineState. Valid action categories are:   Source   Build   Test   Deploy   Approval   Invoke   Pipelines also include transitions, which allow the transition of artifacts from one stage to the next in a pipeline after the actions in one stage complete. You can work with transitions by calling:    DisableStageTransition, which prevents artifacts from transitioning to the next stage in a pipeline.    EnableStageTransition, which enables transition of artifacts between stages in a pipeline.     Using the API to integrate with AWS CodePipeline  For third-party integrators or developers who want to create their own integrations with AWS CodePipeline, the expected sequence varies from the standard API user. To integrate with AWS CodePipeline, developers need to work with the following items:  Jobs, which are instances of an action. For example, a job for a source action might import a revision of an artifact from a source.  You can work with jobs by calling:    AcknowledgeJob, which confirms whether a job worker has received the specified job.    GetJobDetails, which returns the details of a job.    PollForJobs, which determines whether there are any jobs to act on.    PutJobFailureResult, which provides details of a job failure.     PutJobSuccessResult, which provides details of a job success.    Third party jobs, which are instances of an action created by a partner action and integrated into AWS CodePipeline. Partner actions are created by members of the AWS Partner Network. You can work with third party jobs by calling:    AcknowledgeThirdPartyJob, which confirms whether a job worker has received the specified job.    GetThirdPartyJobDetails, which requests the details of a job for a partner action.    PollForThirdPartyJobs, which determines whether there are any jobs to act on.     PutThirdPartyJobFailureResult, which provides details of a job failure.    PutThirdPartyJobSuccessResult, which provides details of a job success.  
*/
public struct CodePipeline {

    //MARK: Member variables

    public let client: AWSClient

    //MARK: Initialization

    /// Initialize the CodePipeline client
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
            amzTarget: "CodePipeline_20150709",
            service: "codepipeline",
            serviceProtocol: .json(version: "1.1"),
            apiVersion: "2015-07-09",
            endpoint: endpoint,
            retryPolicy: retryPolicy,
            middlewares: middlewares,
            possibleErrorTypes: [CodePipelineErrorType.self],
            httpClientProvider: httpClientProvider
        )
    }
    
    //MARK: API Calls

    ///  Returns information about a specified job and whether that job has been received by the job worker. Used for custom actions only.
    public func acknowledgeJob(_ input: AcknowledgeJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcknowledgeJobOutput> {
        return client.send(operation: "AcknowledgeJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Confirms a job worker has received the specified job. Used for partner actions only.
    public func acknowledgeThirdPartyJob(_ input: AcknowledgeThirdPartyJobInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AcknowledgeThirdPartyJobOutput> {
        return client.send(operation: "AcknowledgeThirdPartyJob", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.
    public func createCustomActionType(_ input: CreateCustomActionTypeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomActionTypeOutput> {
        return client.send(operation: "CreateCustomActionType", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Creates a pipeline.  In the pipeline structure, you must include either artifactStore or artifactStores in your pipeline, but you cannot use both. If you create a cross-region action in your pipeline, you must use artifactStores. 
    public func createPipeline(_ input: CreatePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePipelineOutput> {
        return client.send(operation: "CreatePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Marks a custom action as deleted. PollForJobs for the custom action fails after the action is marked for deletion. Used for custom actions only.  To re-create a custom action after it has been deleted you must use a string in the version field that has never been used before. This string can be an incremented version number, for example. To restore a deleted custom action, use a JSON file that is identical to the deleted action, including the original string in the version field. 
    @discardableResult public func deleteCustomActionType(_ input: DeleteCustomActionTypeInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeleteCustomActionType", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes the specified pipeline.
    @discardableResult public func deletePipeline(_ input: DeletePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DeletePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Deletes a previously created webhook by name. Deleting the webhook stops AWS CodePipeline from starting a pipeline every time an external event occurs. The API returns successfully when trying to delete a webhook that is already deleted. If a deleted webhook is re-created by calling PutWebhook with the same name, it will have a different URL.
    public func deleteWebhook(_ input: DeleteWebhookInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteWebhookOutput> {
        return client.send(operation: "DeleteWebhook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes the connection between the webhook that was created by CodePipeline and the external tool with events to be detected. Currently supported only for webhooks that target an action type of GitHub.
    public func deregisterWebhookWithThirdParty(_ input: DeregisterWebhookWithThirdPartyInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeregisterWebhookWithThirdPartyOutput> {
        return client.send(operation: "DeregisterWebhookWithThirdParty", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.
    @discardableResult public func disableStageTransition(_ input: DisableStageTransitionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "DisableStageTransition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Enables artifacts in a pipeline to transition to a stage in a pipeline.
    @discardableResult public func enableStageTransition(_ input: EnableStageTransitionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "EnableStageTransition", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about a job. Used for custom actions only.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action. 
    public func getJobDetails(_ input: GetJobDetailsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetJobDetailsOutput> {
        return client.send(operation: "GetJobDetails", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with UpdatePipeline.
    public func getPipeline(_ input: GetPipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPipelineOutput> {
        return client.send(operation: "GetPipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.
    public func getPipelineExecution(_ input: GetPipelineExecutionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPipelineExecutionOutput> {
        return client.send(operation: "GetPipelineExecution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about the state of a pipeline, including the stages and actions.  Values returned in the revisionId and revisionUrl fields indicate the source revision information, such as the commit ID, for the current state. 
    public func getPipelineState(_ input: GetPipelineStateInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPipelineStateOutput> {
        return client.send(operation: "GetPipelineState", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Requests the details of a job for a third party action. Used for partner actions only.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action. 
    public func getThirdPartyJobDetails(_ input: GetThirdPartyJobDetailsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetThirdPartyJobDetailsOutput> {
        return client.send(operation: "GetThirdPartyJobDetails", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Lists the action executions that have occurred in a pipeline.
    public func listActionExecutions(_ input: ListActionExecutionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListActionExecutionsOutput> {
        return client.send(operation: "ListActionExecutions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a summary of all AWS CodePipeline action types associated with your account.
    public func listActionTypes(_ input: ListActionTypesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListActionTypesOutput> {
        return client.send(operation: "ListActionTypes", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a summary of the most recent executions for a pipeline.
    public func listPipelineExecutions(_ input: ListPipelineExecutionsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPipelineExecutionsOutput> {
        return client.send(operation: "ListPipelineExecutions", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a summary of all of the pipelines associated with your account.
    public func listPipelines(_ input: ListPipelinesInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPipelinesOutput> {
        return client.send(operation: "ListPipelines", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets the set of key-value pairs (metadata) that are used to manage the resource.
    public func listTagsForResource(_ input: ListTagsForResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListTagsForResourceOutput> {
        return client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Gets a listing of all the webhooks in this AWS Region for this account. The output lists all webhooks and includes the webhook URL and ARN and the configuration for each webhook.
    public func listWebhooks(_ input: ListWebhooksInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWebhooksOutput> {
        return client.send(operation: "ListWebhooks", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Returns information about any jobs for AWS CodePipeline to act on. PollForJobs is valid only for action types with "Custom" in the owner field. If the action type contains "AWS" or "ThirdParty" in the owner field, the PollForJobs action returns an error.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. This API also returns any secret values defined for the action. 
    public func pollForJobs(_ input: PollForJobsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PollForJobsOutput> {
        return client.send(operation: "PollForJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Determines whether there are any third party jobs for a job worker to act on. Used for partner actions only.  When this API is called, AWS CodePipeline returns temporary credentials for the S3 bucket used to store artifacts for the pipeline, if the action requires access to that S3 bucket for input or output artifacts. 
    public func pollForThirdPartyJobs(_ input: PollForThirdPartyJobsInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PollForThirdPartyJobsOutput> {
        return client.send(operation: "PollForThirdPartyJobs", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides information to AWS CodePipeline about new revisions to a source.
    public func putActionRevision(_ input: PutActionRevisionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutActionRevisionOutput> {
        return client.send(operation: "PutActionRevision", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.
    public func putApprovalResult(_ input: PutApprovalResultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutApprovalResultOutput> {
        return client.send(operation: "PutApprovalResult", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Represents the failure of a job as returned to the pipeline by a job worker. Used for custom actions only.
    @discardableResult public func putJobFailureResult(_ input: PutJobFailureResultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutJobFailureResult", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Represents the success of a job as returned to the pipeline by a job worker. Used for custom actions only.
    @discardableResult public func putJobSuccessResult(_ input: PutJobSuccessResultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutJobSuccessResult", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Represents the failure of a third party job as returned to the pipeline by a job worker. Used for partner actions only.
    @discardableResult public func putThirdPartyJobFailureResult(_ input: PutThirdPartyJobFailureResultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutThirdPartyJobFailureResult", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Represents the success of a third party job as returned to the pipeline by a job worker. Used for partner actions only.
    @discardableResult public func putThirdPartyJobSuccessResult(_ input: PutThirdPartyJobSuccessResultInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        return client.send(operation: "PutThirdPartyJobSuccessResult", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Defines a webhook and returns a unique webhook URL generated by CodePipeline. This URL can be supplied to third party source hosting providers to call every time there's a code change. When CodePipeline receives a POST request on this URL, the pipeline defined in the webhook is started as long as the POST request satisfied the authentication and filtering requirements supplied when defining the webhook. RegisterWebhookWithThirdParty and DeregisterWebhookWithThirdParty APIs can be used to automatically configure supported third parties to call the generated webhook URL.
    public func putWebhook(_ input: PutWebhookInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutWebhookOutput> {
        return client.send(operation: "PutWebhook", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Configures a connection between the webhook that was created and the external tool with events to be detected.
    public func registerWebhookWithThirdParty(_ input: RegisterWebhookWithThirdPartyInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RegisterWebhookWithThirdPartyOutput> {
        return client.send(operation: "RegisterWebhookWithThirdParty", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Resumes the pipeline execution by retrying the last failed actions in a stage. You can retry a stage immediately if any of the actions in the stage fail. When you retry, all actions that are still in progress continue working, and failed actions are triggered again.
    public func retryStageExecution(_ input: RetryStageExecutionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryStageExecutionOutput> {
        return client.send(operation: "RetryStageExecution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.
    public func startPipelineExecution(_ input: StartPipelineExecutionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartPipelineExecutionOutput> {
        return client.send(operation: "StartPipelineExecution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Stops the specified pipeline execution. You choose to either stop the pipeline execution by completing in-progress actions without starting subsequent actions, or by abandoning in-progress actions. While completing or abandoning in-progress actions, the pipeline execution is in a Stopping state. After all in-progress actions are completed or abandoned, the pipeline execution is in a Stopped state.
    public func stopPipelineExecution(_ input: StopPipelineExecutionInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopPipelineExecutionOutput> {
        return client.send(operation: "StopPipelineExecution", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Adds to or modifies the tags of the given resource. Tags are metadata that can be used to manage a resource. 
    public func tagResource(_ input: TagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TagResourceOutput> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Removes tags from an AWS resource.
    public func untagResource(_ input: UntagResourceInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UntagResourceOutput> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }

    ///  Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure and UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.
    public func updatePipeline(_ input: UpdatePipelineInput, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdatePipelineOutput> {
        return client.send(operation: "UpdatePipeline", path: "/", httpMethod: "POST", input: input, on: eventLoop)
    }
}
