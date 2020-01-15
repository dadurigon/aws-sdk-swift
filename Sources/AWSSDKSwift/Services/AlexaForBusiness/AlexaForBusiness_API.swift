// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import AWSSDKSwiftCore
import Foundation
import NIO

/**
Alexa for Business helps you use Alexa in your organization. Alexa for Business provides you with the tools to manage Alexa devices, enroll your users, and assign skills, at scale. You can build your own context-aware voice skills using the Alexa Skills Kit and the Alexa for Business API operations. You can also make these available as private skills for your organization. Alexa for Business makes it efficient to voice-enable your products and services, thus providing context-aware voice experiences for your customers. Device makers building with the Alexa Voice Service (AVS) can create fully integrated solutions, register their products with Alexa for Business, and manage them as shared devices in their organization. 
*/
public struct AlexaForBusiness {

    public let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, sessionToken: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil, middlewares: [AWSServiceMiddleware] = [], eventLoopGroupProvider: AWSClient.EventLoopGroupProvider = .useAWSClientShared) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            sessionToken: sessionToken,
            region: region,
            amzTarget: "AlexaForBusiness",
            service: "a4b",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-09",
            endpoint: endpoint,
            middlewares: middlewares,
            possibleErrorTypes: [AlexaForBusinessErrorType.self],
            eventLoopGroupProvider: eventLoopGroupProvider
        )
    }

    ///  Associates a skill with the organization under the customer's AWS account. If a skill is private, the user implicitly accepts access to this skill during enablement.
    public func approveSkill(_ input: ApproveSkillRequest) -> Future<ApproveSkillResponse> {
        return client.send(operation: "ApproveSkill", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a contact with a given address book.
    public func associateContactWithAddressBook(_ input: AssociateContactWithAddressBookRequest) -> Future<AssociateContactWithAddressBookResponse> {
        return client.send(operation: "AssociateContactWithAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a device with the specified network profile.
    public func associateDeviceWithNetworkProfile(_ input: AssociateDeviceWithNetworkProfileRequest) -> Future<AssociateDeviceWithNetworkProfileResponse> {
        return client.send(operation: "AssociateDeviceWithNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a device with a given room. This applies all the settings from the room profile to the device, and all the skills in any skill groups added to that room. This operation requires the device to be online, or else a manual sync is required. 
    public func associateDeviceWithRoom(_ input: AssociateDeviceWithRoomRequest) -> Future<AssociateDeviceWithRoomResponse> {
        return client.send(operation: "AssociateDeviceWithRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a skill group with a given room. This enables all skills in the associated skill group on all devices in the room.
    public func associateSkillGroupWithRoom(_ input: AssociateSkillGroupWithRoomRequest) -> Future<AssociateSkillGroupWithRoomResponse> {
        return client.send(operation: "AssociateSkillGroupWithRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a skill with a skill group.
    public func associateSkillWithSkillGroup(_ input: AssociateSkillWithSkillGroupRequest) -> Future<AssociateSkillWithSkillGroupResponse> {
        return client.send(operation: "AssociateSkillWithSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Makes a private skill available for enrolled users to enable on their devices.
    public func associateSkillWithUsers(_ input: AssociateSkillWithUsersRequest) -> Future<AssociateSkillWithUsersResponse> {
        return client.send(operation: "AssociateSkillWithUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an address book with the specified details.
    public func createAddressBook(_ input: CreateAddressBookRequest) -> Future<CreateAddressBookResponse> {
        return client.send(operation: "CreateAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a recurring schedule for usage reports to deliver to the specified S3 location with a specified daily or weekly interval.
    public func createBusinessReportSchedule(_ input: CreateBusinessReportScheduleRequest) -> Future<CreateBusinessReportScheduleResponse> {
        return client.send(operation: "CreateBusinessReportSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds a new conference provider under the user's AWS account.
    public func createConferenceProvider(_ input: CreateConferenceProviderRequest) -> Future<CreateConferenceProviderResponse> {
        return client.send(operation: "CreateConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a contact with the specified details.
    public func createContact(_ input: CreateContactRequest) -> Future<CreateContactResponse> {
        return client.send(operation: "CreateContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a gateway group with the specified details.
    public func createGatewayGroup(_ input: CreateGatewayGroupRequest) -> Future<CreateGatewayGroupResponse> {
        return client.send(operation: "CreateGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a network profile with the specified details.
    public func createNetworkProfile(_ input: CreateNetworkProfileRequest) -> Future<CreateNetworkProfileResponse> {
        return client.send(operation: "CreateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new room profile with the specified details.
    public func createProfile(_ input: CreateProfileRequest) -> Future<CreateProfileResponse> {
        return client.send(operation: "CreateProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a room with the specified details.
    public func createRoom(_ input: CreateRoomRequest) -> Future<CreateRoomResponse> {
        return client.send(operation: "CreateRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a skill group with a specified name and description.
    public func createSkillGroup(_ input: CreateSkillGroupRequest) -> Future<CreateSkillGroupResponse> {
        return client.send(operation: "CreateSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a user.
    public func createUser(_ input: CreateUserRequest) -> Future<CreateUserResponse> {
        return client.send(operation: "CreateUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an address book by the address book ARN.
    public func deleteAddressBook(_ input: DeleteAddressBookRequest) -> Future<DeleteAddressBookResponse> {
        return client.send(operation: "DeleteAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the recurring report delivery schedule with the specified schedule ARN.
    public func deleteBusinessReportSchedule(_ input: DeleteBusinessReportScheduleRequest) -> Future<DeleteBusinessReportScheduleResponse> {
        return client.send(operation: "DeleteBusinessReportSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a conference provider.
    public func deleteConferenceProvider(_ input: DeleteConferenceProviderRequest) -> Future<DeleteConferenceProviderResponse> {
        return client.send(operation: "DeleteConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a contact by the contact ARN.
    public func deleteContact(_ input: DeleteContactRequest) -> Future<DeleteContactResponse> {
        return client.send(operation: "DeleteContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a device from Alexa For Business.
    public func deleteDevice(_ input: DeleteDeviceRequest) -> Future<DeleteDeviceResponse> {
        return client.send(operation: "DeleteDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  When this action is called for a specified shared device, it allows authorized users to delete the device's entire previous history of voice input data and associated response data. This action can be called once every 24 hours for a specific shared device.
    public func deleteDeviceUsageData(_ input: DeleteDeviceUsageDataRequest) -> Future<DeleteDeviceUsageDataResponse> {
        return client.send(operation: "DeleteDeviceUsageData", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a gateway group.
    public func deleteGatewayGroup(_ input: DeleteGatewayGroupRequest) -> Future<DeleteGatewayGroupResponse> {
        return client.send(operation: "DeleteGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a network profile by the network profile ARN.
    public func deleteNetworkProfile(_ input: DeleteNetworkProfileRequest) -> Future<DeleteNetworkProfileResponse> {
        return client.send(operation: "DeleteNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a room profile by the profile ARN.
    public func deleteProfile(_ input: DeleteProfileRequest) -> Future<DeleteProfileResponse> {
        return client.send(operation: "DeleteProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a room by the room ARN.
    public func deleteRoom(_ input: DeleteRoomRequest) -> Future<DeleteRoomResponse> {
        return client.send(operation: "DeleteRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes room skill parameter details by room, skill, and parameter key ID.
    public func deleteRoomSkillParameter(_ input: DeleteRoomSkillParameterRequest) -> Future<DeleteRoomSkillParameterResponse> {
        return client.send(operation: "DeleteRoomSkillParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Unlinks a third-party account from a skill.
    public func deleteSkillAuthorization(_ input: DeleteSkillAuthorizationRequest) -> Future<DeleteSkillAuthorizationResponse> {
        return client.send(operation: "DeleteSkillAuthorization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a skill group by skill group ARN.
    public func deleteSkillGroup(_ input: DeleteSkillGroupRequest) -> Future<DeleteSkillGroupResponse> {
        return client.send(operation: "DeleteSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified user by user ARN and enrollment ARN.
    public func deleteUser(_ input: DeleteUserRequest) -> Future<DeleteUserResponse> {
        return client.send(operation: "DeleteUser", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a contact from a given address book.
    public func disassociateContactFromAddressBook(_ input: DisassociateContactFromAddressBookRequest) -> Future<DisassociateContactFromAddressBookResponse> {
        return client.send(operation: "DisassociateContactFromAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a device from its current room. The device continues to be connected to the Wi-Fi network and is still registered to the account. The device settings and skills are removed from the room.
    public func disassociateDeviceFromRoom(_ input: DisassociateDeviceFromRoomRequest) -> Future<DisassociateDeviceFromRoomResponse> {
        return client.send(operation: "DisassociateDeviceFromRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a skill from a skill group.
    public func disassociateSkillFromSkillGroup(_ input: DisassociateSkillFromSkillGroupRequest) -> Future<DisassociateSkillFromSkillGroupResponse> {
        return client.send(operation: "DisassociateSkillFromSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Makes a private skill unavailable for enrolled users and prevents them from enabling it on their devices.
    public func disassociateSkillFromUsers(_ input: DisassociateSkillFromUsersRequest) -> Future<DisassociateSkillFromUsersResponse> {
        return client.send(operation: "DisassociateSkillFromUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a skill group from a specified room. This disables all skills in the skill group on all devices in the room.
    public func disassociateSkillGroupFromRoom(_ input: DisassociateSkillGroupFromRoomRequest) -> Future<DisassociateSkillGroupFromRoomResponse> {
        return client.send(operation: "DisassociateSkillGroupFromRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Forgets smart home appliances associated to a room.
    public func forgetSmartHomeAppliances(_ input: ForgetSmartHomeAppliancesRequest) -> Future<ForgetSmartHomeAppliancesResponse> {
        return client.send(operation: "ForgetSmartHomeAppliances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets address the book details by the address book ARN.
    public func getAddressBook(_ input: GetAddressBookRequest) -> Future<GetAddressBookResponse> {
        return client.send(operation: "GetAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the existing conference preferences.
    public func getConferencePreference(_ input: GetConferencePreferenceRequest) -> Future<GetConferencePreferenceResponse> {
        return client.send(operation: "GetConferencePreference", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets details about a specific conference provider.
    public func getConferenceProvider(_ input: GetConferenceProviderRequest) -> Future<GetConferenceProviderResponse> {
        return client.send(operation: "GetConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the contact details by the contact ARN.
    public func getContact(_ input: GetContactRequest) -> Future<GetContactResponse> {
        return client.send(operation: "GetContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the details of a device by device ARN.
    public func getDevice(_ input: GetDeviceRequest) -> Future<GetDeviceResponse> {
        return client.send(operation: "GetDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the details of a gateway.
    public func getGateway(_ input: GetGatewayRequest) -> Future<GetGatewayResponse> {
        return client.send(operation: "GetGateway", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the details of a gateway group.
    public func getGatewayGroup(_ input: GetGatewayGroupRequest) -> Future<GetGatewayGroupResponse> {
        return client.send(operation: "GetGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves the configured values for the user enrollment invitation email template.
    public func getInvitationConfiguration(_ input: GetInvitationConfigurationRequest) -> Future<GetInvitationConfigurationResponse> {
        return client.send(operation: "GetInvitationConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the network profile details by the network profile ARN.
    public func getNetworkProfile(_ input: GetNetworkProfileRequest) -> Future<GetNetworkProfileResponse> {
        return client.send(operation: "GetNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the details of a room profile by profile ARN.
    public func getProfile(_ input: GetProfileRequest) -> Future<GetProfileResponse> {
        return client.send(operation: "GetProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets room details by room ARN.
    public func getRoom(_ input: GetRoomRequest) -> Future<GetRoomResponse> {
        return client.send(operation: "GetRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets room skill parameter details by room, skill, and parameter key ARN.
    public func getRoomSkillParameter(_ input: GetRoomSkillParameterRequest) -> Future<GetRoomSkillParameterResponse> {
        return client.send(operation: "GetRoomSkillParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets skill group details by skill group ARN.
    public func getSkillGroup(_ input: GetSkillGroupRequest) -> Future<GetSkillGroupResponse> {
        return client.send(operation: "GetSkillGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the details of the schedules that a user configured. A download URL of the report associated with each schedule is returned every time this action is called. A new download URL is returned each time, and is valid for 24 hours.
    public func listBusinessReportSchedules(_ input: ListBusinessReportSchedulesRequest) -> Future<ListBusinessReportSchedulesResponse> {
        return client.send(operation: "ListBusinessReportSchedules", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists conference providers under a specific AWS account.
    public func listConferenceProviders(_ input: ListConferenceProvidersRequest) -> Future<ListConferenceProvidersResponse> {
        return client.send(operation: "ListConferenceProviders", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the device event history, including device connection status, for up to 30 days.
    public func listDeviceEvents(_ input: ListDeviceEventsRequest) -> Future<ListDeviceEventsResponse> {
        return client.send(operation: "ListDeviceEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of gateway group summaries. Use GetGatewayGroup to retrieve details of a specific gateway group.
    public func listGatewayGroups(_ input: ListGatewayGroupsRequest) -> Future<ListGatewayGroupsResponse> {
        return client.send(operation: "ListGatewayGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves a list of gateway summaries. Use GetGateway to retrieve details of a specific gateway. An optional gateway group ARN can be provided to only retrieve gateway summaries of gateways that are associated with that gateway group ARN.
    public func listGateways(_ input: ListGatewaysRequest) -> Future<ListGatewaysResponse> {
        return client.send(operation: "ListGateways", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all enabled skills in a specific skill group.
    public func listSkills(_ input: ListSkillsRequest) -> Future<ListSkillsResponse> {
        return client.send(operation: "ListSkills", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all categories in the Alexa skill store.
    public func listSkillsStoreCategories(_ input: ListSkillsStoreCategoriesRequest) -> Future<ListSkillsStoreCategoriesResponse> {
        return client.send(operation: "ListSkillsStoreCategories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all skills in the Alexa skill store by category.
    public func listSkillsStoreSkillsByCategory(_ input: ListSkillsStoreSkillsByCategoryRequest) -> Future<ListSkillsStoreSkillsByCategoryResponse> {
        return client.send(operation: "ListSkillsStoreSkillsByCategory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all of the smart home appliances associated with a room.
    public func listSmartHomeAppliances(_ input: ListSmartHomeAppliancesRequest) -> Future<ListSmartHomeAppliancesResponse> {
        return client.send(operation: "ListSmartHomeAppliances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags for the specified resource.
    public func listTags(_ input: ListTagsRequest) -> Future<ListTagsResponse> {
        return client.send(operation: "ListTags", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets the conference preferences on a specific conference provider at the account level.
    public func putConferencePreference(_ input: PutConferencePreferenceRequest) -> Future<PutConferencePreferenceResponse> {
        return client.send(operation: "PutConferencePreference", path: "/", httpMethod: "POST", input: input)
    }

    ///  Configures the email template for the user enrollment invitation with the specified attributes.
    public func putInvitationConfiguration(_ input: PutInvitationConfigurationRequest) -> Future<PutInvitationConfigurationResponse> {
        return client.send(operation: "PutInvitationConfiguration", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates room skill parameter details by room, skill, and parameter key ID. Not all skills have a room skill parameter.
    public func putRoomSkillParameter(_ input: PutRoomSkillParameterRequest) -> Future<PutRoomSkillParameterResponse> {
        return client.send(operation: "PutRoomSkillParameter", path: "/", httpMethod: "POST", input: input)
    }

    ///  Links a user's account to a third-party skill provider. If this API operation is called by an assumed IAM role, the skill being linked must be a private skill. Also, the skill must be owned by the AWS account that assumed the IAM role.
    public func putSkillAuthorization(_ input: PutSkillAuthorizationRequest) -> Future<PutSkillAuthorizationResponse> {
        return client.send(operation: "PutSkillAuthorization", path: "/", httpMethod: "POST", input: input)
    }

    ///  Registers an Alexa-enabled device built by an Original Equipment Manufacturer (OEM) using Alexa Voice Service (AVS).
    public func registerAVSDevice(_ input: RegisterAVSDeviceRequest) -> Future<RegisterAVSDeviceResponse> {
        return client.send(operation: "RegisterAVSDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disassociates a skill from the organization under a user's AWS account. If the skill is a private skill, it moves to an AcceptStatus of PENDING. Any private or public skill that is rejected can be added later by calling the ApproveSkill API. 
    public func rejectSkill(_ input: RejectSkillRequest) -> Future<RejectSkillResponse> {
        return client.send(operation: "RejectSkill", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines the details for the room from which a skill request was invoked. This operation is used by skill developers.
    public func resolveRoom(_ input: ResolveRoomRequest) -> Future<ResolveRoomResponse> {
        return client.send(operation: "ResolveRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Revokes an invitation and invalidates the enrollment URL.
    public func revokeInvitation(_ input: RevokeInvitationRequest) -> Future<RevokeInvitationResponse> {
        return client.send(operation: "RevokeInvitation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches address books and lists the ones that meet a set of filter and sort criteria.
    public func searchAddressBooks(_ input: SearchAddressBooksRequest) -> Future<SearchAddressBooksResponse> {
        return client.send(operation: "SearchAddressBooks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches contacts and lists the ones that meet a set of filter and sort criteria.
    public func searchContacts(_ input: SearchContactsRequest) -> Future<SearchContactsResponse> {
        return client.send(operation: "SearchContacts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches devices and lists the ones that meet a set of filter criteria.
    public func searchDevices(_ input: SearchDevicesRequest) -> Future<SearchDevicesResponse> {
        return client.send(operation: "SearchDevices", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches network profiles and lists the ones that meet a set of filter and sort criteria.
    public func searchNetworkProfiles(_ input: SearchNetworkProfilesRequest) -> Future<SearchNetworkProfilesResponse> {
        return client.send(operation: "SearchNetworkProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches room profiles and lists the ones that meet a set of filter criteria.
    public func searchProfiles(_ input: SearchProfilesRequest) -> Future<SearchProfilesResponse> {
        return client.send(operation: "SearchProfiles", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches rooms and lists the ones that meet a set of filter and sort criteria.
    public func searchRooms(_ input: SearchRoomsRequest) -> Future<SearchRoomsResponse> {
        return client.send(operation: "SearchRooms", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches skill groups and lists the ones that meet a set of filter and sort criteria.
    public func searchSkillGroups(_ input: SearchSkillGroupsRequest) -> Future<SearchSkillGroupsResponse> {
        return client.send(operation: "SearchSkillGroups", path: "/", httpMethod: "POST", input: input)
    }

    ///  Searches users and lists the ones that meet a set of filter and sort criteria.
    public func searchUsers(_ input: SearchUsersRequest) -> Future<SearchUsersResponse> {
        return client.send(operation: "SearchUsers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Triggers an asynchronous flow to send text, SSML, or audio announcements to rooms that are identified by a search or filter. 
    public func sendAnnouncement(_ input: SendAnnouncementRequest) -> Future<SendAnnouncementResponse> {
        return client.send(operation: "SendAnnouncement", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sends an enrollment invitation email with a URL to a user. The URL is valid for 30 days or until you call this operation again, whichever comes first. 
    public func sendInvitation(_ input: SendInvitationRequest) -> Future<SendInvitationResponse> {
        return client.send(operation: "SendInvitation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resets a device and its account to the known default settings. This clears all information and settings set by previous users in the following ways:   Bluetooth - This unpairs all bluetooth devices paired with your echo device.   Volume - This resets the echo device's volume to the default value.   Notifications - This clears all notifications from your echo device.   Lists - This clears all to-do items from your echo device.   Settings - This internally syncs the room's profile (if the device is assigned to a room), contacts, address books, delegation access for account linking, and communications (if enabled on the room profile).  
    public func startDeviceSync(_ input: StartDeviceSyncRequest) -> Future<StartDeviceSyncResponse> {
        return client.send(operation: "StartDeviceSync", path: "/", httpMethod: "POST", input: input)
    }

    ///  Initiates the discovery of any smart home appliances associated with the room.
    public func startSmartHomeApplianceDiscovery(_ input: StartSmartHomeApplianceDiscoveryRequest) -> Future<StartSmartHomeApplianceDiscoveryResponse> {
        return client.send(operation: "StartSmartHomeApplianceDiscovery", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds metadata tags to a specified resource.
    public func tagResource(_ input: TagResourceRequest) -> Future<TagResourceResponse> {
        return client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes metadata tags from a specified resource.
    public func untagResource(_ input: UntagResourceRequest) -> Future<UntagResourceResponse> {
        return client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates address book details by the address book ARN.
    public func updateAddressBook(_ input: UpdateAddressBookRequest) -> Future<UpdateAddressBookResponse> {
        return client.send(operation: "UpdateAddressBook", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the configuration of the report delivery schedule with the specified schedule ARN.
    public func updateBusinessReportSchedule(_ input: UpdateBusinessReportScheduleRequest) -> Future<UpdateBusinessReportScheduleResponse> {
        return client.send(operation: "UpdateBusinessReportSchedule", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing conference provider's settings.
    public func updateConferenceProvider(_ input: UpdateConferenceProviderRequest) -> Future<UpdateConferenceProviderResponse> {
        return client.send(operation: "UpdateConferenceProvider", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the contact details by the contact ARN.
    public func updateContact(_ input: UpdateContactRequest) -> Future<UpdateContactResponse> {
        return client.send(operation: "UpdateContact", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the device name by device ARN.
    public func updateDevice(_ input: UpdateDeviceRequest) -> Future<UpdateDeviceResponse> {
        return client.send(operation: "UpdateDevice", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the details of a gateway. If any optional field is not provided, the existing corresponding value is left unmodified.
    public func updateGateway(_ input: UpdateGatewayRequest) -> Future<UpdateGatewayResponse> {
        return client.send(operation: "UpdateGateway", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the details of a gateway group. If any optional field is not provided, the existing corresponding value is left unmodified.
    public func updateGatewayGroup(_ input: UpdateGatewayGroupRequest) -> Future<UpdateGatewayGroupResponse> {
        return client.send(operation: "UpdateGatewayGroup", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a network profile by the network profile ARN.
    public func updateNetworkProfile(_ input: UpdateNetworkProfileRequest) -> Future<UpdateNetworkProfileResponse> {
        return client.send(operation: "UpdateNetworkProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates an existing room profile by room profile ARN.
    public func updateProfile(_ input: UpdateProfileRequest) -> Future<UpdateProfileResponse> {
        return client.send(operation: "UpdateProfile", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates room details by room ARN.
    public func updateRoom(_ input: UpdateRoomRequest) -> Future<UpdateRoomResponse> {
        return client.send(operation: "UpdateRoom", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates skill group details by skill group ARN.
    public func updateSkillGroup(_ input: UpdateSkillGroupRequest) -> Future<UpdateSkillGroupResponse> {
        return client.send(operation: "UpdateSkillGroup", path: "/", httpMethod: "POST", input: input)
    }
}
