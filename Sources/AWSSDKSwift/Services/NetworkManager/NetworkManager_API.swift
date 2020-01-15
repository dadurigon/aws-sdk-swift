// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your AWS and on-premises networks that are built around transit gateways.
*/
public struct NetworkManager {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            service: "networkmanager",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2019-07-05",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [NetworkManagerErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 
    public func associateCustomerGateway(_ input: AssociateCustomerGatewayRequest) -> Future<AssociateCustomerGatewayResponse> {
        return client.send(operation: "AssociateCustomerGateway", path: "/global-networks/{globalNetworkId}/customer-gateway-associations", httpMethod: "POST", input: input)
    }

    ///  Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.
    public func associateLink(_ input: AssociateLinkRequest) -> Future<AssociateLinkResponse> {
        return client.send(operation: "AssociateLink", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "POST", input: input)
    }

    ///  Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.
    public func createDevice(_ input: CreateDeviceRequest) -> Future<CreateDeviceResponse> {
        return client.send(operation: "CreateDevice", path: "/global-networks/{globalNetworkId}/devices", httpMethod: "POST", input: input)
    }

    ///  Creates a new, empty global network.
    public func createGlobalNetwork(_ input: CreateGlobalNetworkRequest) -> Future<CreateGlobalNetworkResponse> {
        return client.send(operation: "CreateGlobalNetwork", path: "/global-networks", httpMethod: "POST", input: input)
    }

    ///  Creates a new link for a specified site.
    public func createLink(_ input: CreateLinkRequest) -> Future<CreateLinkResponse> {
        return client.send(operation: "CreateLink", path: "/global-networks/{globalNetworkId}/links", httpMethod: "POST", input: input)
    }

    ///  Creates a new site in a global network.
    public func createSite(_ input: CreateSiteRequest) -> Future<CreateSiteResponse> {
        return client.send(operation: "CreateSite", path: "/global-networks/{globalNetworkId}/sites", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing device. You must first disassociate the device from any links and customer gateways.
    public func deleteDevice(_ input: DeleteDeviceRequest) -> Future<DeleteDeviceResponse> {
        return client.send(operation: "DeleteDevice", path: "/global-networks/{globalNetworkId}/devices/{deviceId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.
    public func deleteGlobalNetwork(_ input: DeleteGlobalNetworkRequest) -> Future<DeleteGlobalNetworkResponse> {
        return client.send(operation: "DeleteGlobalNetwork", path: "/global-networks/{globalNetworkId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing link. You must first disassociate the link from any devices and customer gateways.
    public func deleteLink(_ input: DeleteLinkRequest) -> Future<DeleteLinkResponse> {
        return client.send(operation: "DeleteLink", path: "/global-networks/{globalNetworkId}/links/{linkId}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an existing site. The site cannot be associated with any device or link.
    public func deleteSite(_ input: DeleteSiteRequest) -> Future<DeleteSiteResponse> {
        return client.send(operation: "DeleteSite", path: "/global-networks/{globalNetworkId}/sites/{siteId}", httpMethod: "DELETE", input: input)
    }

    ///  Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.
    public func deregisterTransitGateway(_ input: DeregisterTransitGatewayRequest) -> Future<DeregisterTransitGatewayResponse> {
        return client.send(operation: "DeregisterTransitGateway", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations/{transitGatewayArn}", httpMethod: "DELETE", input: input)
    }

    ///  Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.
    public func describeGlobalNetworks(_ input: DescribeGlobalNetworksRequest) -> Future<DescribeGlobalNetworksResponse> {
        return client.send(operation: "DescribeGlobalNetworks", path: "/global-networks", httpMethod: "GET", input: input)
    }

    ///  Disassociates a customer gateway from a device and a link.
    public func disassociateCustomerGateway(_ input: DisassociateCustomerGatewayRequest) -> Future<DisassociateCustomerGatewayResponse> {
        return client.send(operation: "DisassociateCustomerGateway", path: "/global-networks/{globalNetworkId}/customer-gateway-associations/{customerGatewayArn}", httpMethod: "DELETE", input: input)
    }

    ///  Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.
    public func disassociateLink(_ input: DisassociateLinkRequest) -> Future<DisassociateLinkResponse> {
        return client.send(operation: "DisassociateLink", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "DELETE", input: input)
    }

    ///  Gets the association information for customer gateways that are associated with devices and links in your global network.
    public func getCustomerGatewayAssociations(_ input: GetCustomerGatewayAssociationsRequest) -> Future<GetCustomerGatewayAssociationsResponse> {
        return client.send(operation: "GetCustomerGatewayAssociations", path: "/global-networks/{globalNetworkId}/customer-gateway-associations", httpMethod: "GET", input: input)
    }

    ///  Gets information about one or more of your devices in a global network.
    public func getDevices(_ input: GetDevicesRequest) -> Future<GetDevicesResponse> {
        return client.send(operation: "GetDevices", path: "/global-networks/{globalNetworkId}/devices", httpMethod: "GET", input: input)
    }

    ///  Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.
    public func getLinkAssociations(_ input: GetLinkAssociationsRequest) -> Future<GetLinkAssociationsResponse> {
        return client.send(operation: "GetLinkAssociations", path: "/global-networks/{globalNetworkId}/link-associations", httpMethod: "GET", input: input)
    }

    ///  Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.
    public func getLinks(_ input: GetLinksRequest) -> Future<GetLinksResponse> {
        return client.send(operation: "GetLinks", path: "/global-networks/{globalNetworkId}/links", httpMethod: "GET", input: input)
    }

    ///  Gets information about one or more of your sites in a global network.
    public func getSites(_ input: GetSitesRequest) -> Future<GetSitesResponse> {
        return client.send(operation: "GetSites", path: "/global-networks/{globalNetworkId}/sites", httpMethod: "GET", input: input)
    }

    ///  Gets information about the transit gateway registrations in a specified global network.
    public func getTransitGatewayRegistrations(_ input: GetTransitGatewayRegistrationsRequest) -> Future<GetTransitGatewayRegistrationsResponse> {
        return client.send(operation: "GetTransitGatewayRegistrations", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations", httpMethod: "GET", input: input)
    }

    ///  Lists the tags for a specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) -> Future<ListTagsForResourceResponse> {
        return client.send(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: "GET", input: input)
    }

    ///  Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.
    public func registerTransitGateway(_ input: RegisterTransitGatewayRequest) -> Future<RegisterTransitGatewayResponse> {
        return client.send(operation: "RegisterTransitGateway", path: "/global-networks/{globalNetworkId}/transit-gateway-registrations", httpMethod: "POST", input: input)
    }

    ///  Tags a specified resource.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: "POST", input: input)
    }

    ///  Removes tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.
    public func updateDevice(_ input: UpdateDeviceRequest) -> Future<UpdateDeviceResponse> {
        return client.send(operation: "UpdateDevice", path: "/global-networks/{globalNetworkId}/devices/{deviceId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates an existing global network. To remove information for any of the parameters, specify an empty string.
    public func updateGlobalNetwork(_ input: UpdateGlobalNetworkRequest) -> Future<UpdateGlobalNetworkResponse> {
        return client.send(operation: "UpdateGlobalNetwork", path: "/global-networks/{globalNetworkId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.
    public func updateLink(_ input: UpdateLinkRequest) -> Future<UpdateLinkResponse> {
        return client.send(operation: "UpdateLink", path: "/global-networks/{globalNetworkId}/links/{linkId}", httpMethod: "PATCH", input: input)
    }

    ///  Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.
    public func updateSite(_ input: UpdateSiteRequest) -> Future<UpdateSiteResponse> {
        return client.send(operation: "UpdateSite", path: "/global-networks/{globalNetworkId}/sites/{siteId}", httpMethod: "PATCH", input: input)
    }
}
