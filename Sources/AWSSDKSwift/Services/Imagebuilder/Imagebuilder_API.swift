// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
 Amazon Elastic Compute Cloud Image Builder provides a one-stop-shop to automate the image management processes. You configure an automated pipeline that creates images for use on AWS. As software updates become available, Image Builder automatically produces a new image based on a customizable schedule and distributes it to stipulated AWS Regions after running tests on it. With the Image Builder, organizations can capture their internal or industry-specific compliance policies as a vetted template that can be consistently applied to every new image. Built-in integration with AWS Organizations provides customers with a centralized way to enforce image distribution and access policies across their AWS accounts and Regions. Image Builder supports multiple image format AMIs on AWS.
*/
public struct Imagebuilder {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "imagebuilder",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [ImagebuilderErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  CancelImageCreation cancels the creation of Image. This operation may only be used on images in a non-terminal state.
    public func cancelImageCreation(_ input: CancelImageCreationRequest) -> Future<CancelImageCreationResponse> {
        return client.send(operation: "CancelImageCreation", path: "/CancelImageCreation", httpMethod: "PUT", input: input)
    }

    ///  Creates a new component that can be used to build, validate, test and assess your image.
    public func createComponent(_ input: CreateComponentRequest) -> Future<CreateComponentResponse> {
        return client.send(operation: "CreateComponent", path: "/CreateComponent", httpMethod: "PUT", input: input)
    }

    ///   Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
    public func createDistributionConfiguration(_ input: CreateDistributionConfigurationRequest) -> Future<CreateDistributionConfigurationResponse> {
        return client.send(operation: "CreateDistributionConfiguration", path: "/CreateDistributionConfiguration", httpMethod: "PUT", input: input)
    }

    ///   Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. 
    public func createImage(_ input: CreateImageRequest) -> Future<CreateImageResponse> {
        return client.send(operation: "CreateImage", path: "/CreateImage", httpMethod: "PUT", input: input)
    }

    ///   Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
    public func createImagePipeline(_ input: CreateImagePipelineRequest) -> Future<CreateImagePipelineResponse> {
        return client.send(operation: "CreateImagePipeline", path: "/CreateImagePipeline", httpMethod: "PUT", input: input)
    }

    ///   Creates a new image recipe. Image Recipes defines how images are configured, tested and assessed. 
    public func createImageRecipe(_ input: CreateImageRecipeRequest) -> Future<CreateImageRecipeResponse> {
        return client.send(operation: "CreateImageRecipe", path: "/CreateImageRecipe", httpMethod: "PUT", input: input)
    }

    ///   Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
    public func createInfrastructureConfiguration(_ input: CreateInfrastructureConfigurationRequest) -> Future<CreateInfrastructureConfigurationResponse> {
        return client.send(operation: "CreateInfrastructureConfiguration", path: "/CreateInfrastructureConfiguration", httpMethod: "PUT", input: input)
    }

    ///   Deletes a component build version. 
    public func deleteComponent(_ input: DeleteComponentRequest) -> Future<DeleteComponentResponse> {
        return client.send(operation: "DeleteComponent", path: "/DeleteComponent", httpMethod: "DELETE", input: input)
    }

    ///   Deletes a distribution configuration. 
    public func deleteDistributionConfiguration(_ input: DeleteDistributionConfigurationRequest) -> Future<DeleteDistributionConfigurationResponse> {
        return client.send(operation: "DeleteDistributionConfiguration", path: "/DeleteDistributionConfiguration", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an image. 
    public func deleteImage(_ input: DeleteImageRequest) -> Future<DeleteImageResponse> {
        return client.send(operation: "DeleteImage", path: "/DeleteImage", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an image pipeline. 
    public func deleteImagePipeline(_ input: DeleteImagePipelineRequest) -> Future<DeleteImagePipelineResponse> {
        return client.send(operation: "DeleteImagePipeline", path: "/DeleteImagePipeline", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an image recipe. 
    public func deleteImageRecipe(_ input: DeleteImageRecipeRequest) -> Future<DeleteImageRecipeResponse> {
        return client.send(operation: "DeleteImageRecipe", path: "/DeleteImageRecipe", httpMethod: "DELETE", input: input)
    }

    ///   Deletes an infrastructure configuration. 
    public func deleteInfrastructureConfiguration(_ input: DeleteInfrastructureConfigurationRequest) -> Future<DeleteInfrastructureConfigurationResponse> {
        return client.send(operation: "DeleteInfrastructureConfiguration", path: "/DeleteInfrastructureConfiguration", httpMethod: "DELETE", input: input)
    }

    ///   Gets a component object. 
    public func getComponent(_ input: GetComponentRequest) -> Future<GetComponentResponse> {
        return client.send(operation: "GetComponent", path: "/GetComponent", httpMethod: "GET", input: input)
    }

    ///   Gets a component policy. 
    public func getComponentPolicy(_ input: GetComponentPolicyRequest) -> Future<GetComponentPolicyResponse> {
        return client.send(operation: "GetComponentPolicy", path: "/GetComponentPolicy", httpMethod: "GET", input: input)
    }

    ///   Gets a distribution configuration. 
    public func getDistributionConfiguration(_ input: GetDistributionConfigurationRequest) -> Future<GetDistributionConfigurationResponse> {
        return client.send(operation: "GetDistributionConfiguration", path: "/GetDistributionConfiguration", httpMethod: "GET", input: input)
    }

    ///   Gets an image. 
    public func getImage(_ input: GetImageRequest) -> Future<GetImageResponse> {
        return client.send(operation: "GetImage", path: "/GetImage", httpMethod: "GET", input: input)
    }

    ///   Gets an image pipeline. 
    public func getImagePipeline(_ input: GetImagePipelineRequest) -> Future<GetImagePipelineResponse> {
        return client.send(operation: "GetImagePipeline", path: "/GetImagePipeline", httpMethod: "GET", input: input)
    }

    ///   Gets an image policy. 
    public func getImagePolicy(_ input: GetImagePolicyRequest) -> Future<GetImagePolicyResponse> {
        return client.send(operation: "GetImagePolicy", path: "/GetImagePolicy", httpMethod: "GET", input: input)
    }

    ///   Gets an image recipe. 
    public func getImageRecipe(_ input: GetImageRecipeRequest) -> Future<GetImageRecipeResponse> {
        return client.send(operation: "GetImageRecipe", path: "/GetImageRecipe", httpMethod: "GET", input: input)
    }

    ///   Gets an image recipe policy. 
    public func getImageRecipePolicy(_ input: GetImageRecipePolicyRequest) -> Future<GetImageRecipePolicyResponse> {
        return client.send(operation: "GetImageRecipePolicy", path: "/GetImageRecipePolicy", httpMethod: "GET", input: input)
    }

    ///   Gets a infrastructure configuration. 
    public func getInfrastructureConfiguration(_ input: GetInfrastructureConfigurationRequest) -> Future<GetInfrastructureConfigurationResponse> {
        return client.send(operation: "GetInfrastructureConfiguration", path: "/GetInfrastructureConfiguration", httpMethod: "GET", input: input)
    }

    ///   Imports a component and transforms its data into a component document. 
    public func importComponent(_ input: ImportComponentRequest) -> Future<ImportComponentResponse> {
        return client.send(operation: "ImportComponent", path: "/ImportComponent", httpMethod: "PUT", input: input)
    }

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponentBuildVersions(_ input: ListComponentBuildVersionsRequest) -> Future<ListComponentBuildVersionsResponse> {
        return client.send(operation: "ListComponentBuildVersions", path: "/ListComponentBuildVersions", httpMethod: "POST", input: input)
    }

    ///   Returns the list of component build versions for the specified semantic version. 
    public func listComponents(_ input: ListComponentsRequest) -> Future<ListComponentsResponse> {
        return client.send(operation: "ListComponents", path: "/ListComponents", httpMethod: "POST", input: input)
    }

    ///   Returns a list of distribution configurations. 
    public func listDistributionConfigurations(_ input: ListDistributionConfigurationsRequest) -> Future<ListDistributionConfigurationsResponse> {
        return client.send(operation: "ListDistributionConfigurations", path: "/ListDistributionConfigurations", httpMethod: "POST", input: input)
    }

    ///   Returns a list of distribution configurations. 
    public func listImageBuildVersions(_ input: ListImageBuildVersionsRequest) -> Future<ListImageBuildVersionsResponse> {
        return client.send(operation: "ListImageBuildVersions", path: "/ListImageBuildVersions", httpMethod: "POST", input: input)
    }

    ///   Returns a list of images created by the specified pipeline. 
    public func listImagePipelineImages(_ input: ListImagePipelineImagesRequest) -> Future<ListImagePipelineImagesResponse> {
        return client.send(operation: "ListImagePipelineImages", path: "/ListImagePipelineImages", httpMethod: "POST", input: input)
    }

    ///  Returns a list of image pipelines. 
    public func listImagePipelines(_ input: ListImagePipelinesRequest) -> Future<ListImagePipelinesResponse> {
        return client.send(operation: "ListImagePipelines", path: "/ListImagePipelines", httpMethod: "POST", input: input)
    }

    ///   Returns a list of image recipes. 
    public func listImageRecipes(_ input: ListImageRecipesRequest) -> Future<ListImageRecipesResponse> {
        return client.send(operation: "ListImageRecipes", path: "/ListImageRecipes", httpMethod: "POST", input: input)
    }

    ///   Returns the list of image build versions for the specified semantic version. 
    public func listImages(_ input: ListImagesRequest) -> Future<ListImagesResponse> {
        return client.send(operation: "ListImages", path: "/ListImages", httpMethod: "POST", input: input)
    }

    ///   Returns a list of infrastructure configurations. 
    public func listInfrastructureConfigurations(_ input: ListInfrastructureConfigurationsRequest) -> Future<ListInfrastructureConfigurationsResponse> {
        return client.send(operation: "ListInfrastructureConfigurations", path: "/ListInfrastructureConfigurations", httpMethod: "POST", input: input)
    }

    ///   Returns the list of tags for the specified resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///   Applies a policy to a component. 
    public func putComponentPolicy(_ input: PutComponentPolicyRequest) -> Future<PutComponentPolicyResponse> {
        return client.send(operation: "PutComponentPolicy", path: "/PutComponentPolicy", httpMethod: "PUT", input: input)
    }

    ///   Applies a policy to an image. 
    public func putImagePolicy(_ input: PutImagePolicyRequest) -> Future<PutImagePolicyResponse> {
        return client.send(operation: "PutImagePolicy", path: "/PutImagePolicy", httpMethod: "PUT", input: input)
    }

    ///   Applies a policy to an image recipe. 
    public func putImageRecipePolicy(_ input: PutImageRecipePolicyRequest) -> Future<PutImageRecipePolicyResponse> {
        return client.send(operation: "PutImageRecipePolicy", path: "/PutImageRecipePolicy", httpMethod: "PUT", input: input)
    }

    ///   Manually triggers a pipeline to create an image. 
    public func startImagePipelineExecution(_ input: StartImagePipelineExecutionRequest) -> Future<StartImagePipelineExecutionResponse> {
        return client.send(operation: "StartImagePipelineExecution", path: "/StartImagePipelineExecution", httpMethod: "PUT", input: input)
    }

    ///   Adds a tag to a resource. 
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///   Removes a tag from a resource. 
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///   Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline. 
    public func updateDistributionConfiguration(_ input: UpdateDistributionConfigurationRequest) -> Future<UpdateDistributionConfigurationResponse> {
        return client.send(operation: "UpdateDistributionConfiguration", path: "/UpdateDistributionConfiguration", httpMethod: "PUT", input: input)
    }

    ///   Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images. 
    public func updateImagePipeline(_ input: UpdateImagePipelineRequest) -> Future<UpdateImagePipelineResponse> {
        return client.send(operation: "UpdateImagePipeline", path: "/UpdateImagePipeline", httpMethod: "PUT", input: input)
    }

    ///   Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested. 
    public func updateInfrastructureConfiguration(_ input: UpdateInfrastructureConfigurationRequest) -> Future<UpdateInfrastructureConfigurationResponse> {
        return client.send(operation: "UpdateInfrastructureConfiguration", path: "/UpdateInfrastructureConfiguration", httpMethod: "PUT", input: input)
    }
}
