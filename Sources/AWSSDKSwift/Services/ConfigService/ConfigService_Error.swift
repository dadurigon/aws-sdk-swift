// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ConfigService
public enum ConfigServiceErrorType: AWSErrorType {
    case conformancePackTemplateValidationException(message: String?)
    case insufficientDeliveryPolicyException(message: String?)
    case insufficientPermissionsException(message: String?)
    case invalidConfigurationRecorderNameException(message: String?)
    case invalidDeliveryChannelNameException(message: String?)
    case invalidExpressionException(message: String?)
    case invalidLimitException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRecordingGroupException(message: String?)
    case invalidResultTokenException(message: String?)
    case invalidRoleException(message: String?)
    case invalidS3KeyPrefixException(message: String?)
    case invalidSNSTopicARNException(message: String?)
    case invalidTimeRangeException(message: String?)
    case lastDeliveryChannelDeleteFailedException(message: String?)
    case limitExceededException(message: String?)
    case maxActiveResourcesExceededException(message: String?)
    case maxNumberOfConfigRulesExceededException(message: String?)
    case maxNumberOfConfigurationRecordersExceededException(message: String?)
    case maxNumberOfConformancePacksExceededException(message: String?)
    case maxNumberOfDeliveryChannelsExceededException(message: String?)
    case maxNumberOfOrganizationConfigRulesExceededException(message: String?)
    case maxNumberOfOrganizationConformancePacksExceededException(message: String?)
    case maxNumberOfRetentionConfigurationsExceededException(message: String?)
    case noAvailableConfigurationRecorderException(message: String?)
    case noAvailableDeliveryChannelException(message: String?)
    case noAvailableOrganizationException(message: String?)
    case noRunningConfigurationRecorderException(message: String?)
    case noSuchBucketException(message: String?)
    case noSuchConfigRuleException(message: String?)
    case noSuchConfigRuleInConformancePackException(message: String?)
    case noSuchConfigurationAggregatorException(message: String?)
    case noSuchConfigurationRecorderException(message: String?)
    case noSuchConformancePackException(message: String?)
    case noSuchDeliveryChannelException(message: String?)
    case noSuchOrganizationConfigRuleException(message: String?)
    case noSuchOrganizationConformancePackException(message: String?)
    case noSuchRemediationConfigurationException(message: String?)
    case noSuchRemediationExceptionException(message: String?)
    case noSuchRetentionConfigurationException(message: String?)
    case organizationAccessDeniedException(message: String?)
    case organizationAllFeaturesNotEnabledException(message: String?)
    case organizationConformancePackTemplateValidationException(message: String?)
    case oversizedConfigurationItemException(message: String?)
    case remediationInProgressException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotDiscoveredException(message: String?)
    case resourceNotFoundException(message: String?)
    case tooManyTagsException(message: String?)
    case validationException(message: String?)
}

extension ConfigServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConformancePackTemplateValidationException":
            self = .conformancePackTemplateValidationException(message: message)
        case "InsufficientDeliveryPolicyException":
            self = .insufficientDeliveryPolicyException(message: message)
        case "InsufficientPermissionsException":
            self = .insufficientPermissionsException(message: message)
        case "InvalidConfigurationRecorderNameException":
            self = .invalidConfigurationRecorderNameException(message: message)
        case "InvalidDeliveryChannelNameException":
            self = .invalidDeliveryChannelNameException(message: message)
        case "InvalidExpressionException":
            self = .invalidExpressionException(message: message)
        case "InvalidLimitException":
            self = .invalidLimitException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRecordingGroupException":
            self = .invalidRecordingGroupException(message: message)
        case "InvalidResultTokenException":
            self = .invalidResultTokenException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "InvalidS3KeyPrefixException":
            self = .invalidS3KeyPrefixException(message: message)
        case "InvalidSNSTopicARNException":
            self = .invalidSNSTopicARNException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "LastDeliveryChannelDeleteFailedException":
            self = .lastDeliveryChannelDeleteFailedException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MaxActiveResourcesExceededException":
            self = .maxActiveResourcesExceededException(message: message)
        case "MaxNumberOfConfigRulesExceededException":
            self = .maxNumberOfConfigRulesExceededException(message: message)
        case "MaxNumberOfConfigurationRecordersExceededException":
            self = .maxNumberOfConfigurationRecordersExceededException(message: message)
        case "MaxNumberOfConformancePacksExceededException":
            self = .maxNumberOfConformancePacksExceededException(message: message)
        case "MaxNumberOfDeliveryChannelsExceededException":
            self = .maxNumberOfDeliveryChannelsExceededException(message: message)
        case "MaxNumberOfOrganizationConfigRulesExceededException":
            self = .maxNumberOfOrganizationConfigRulesExceededException(message: message)
        case "MaxNumberOfOrganizationConformancePacksExceededException":
            self = .maxNumberOfOrganizationConformancePacksExceededException(message: message)
        case "MaxNumberOfRetentionConfigurationsExceededException":
            self = .maxNumberOfRetentionConfigurationsExceededException(message: message)
        case "NoAvailableConfigurationRecorderException":
            self = .noAvailableConfigurationRecorderException(message: message)
        case "NoAvailableDeliveryChannelException":
            self = .noAvailableDeliveryChannelException(message: message)
        case "NoAvailableOrganizationException":
            self = .noAvailableOrganizationException(message: message)
        case "NoRunningConfigurationRecorderException":
            self = .noRunningConfigurationRecorderException(message: message)
        case "NoSuchBucketException":
            self = .noSuchBucketException(message: message)
        case "NoSuchConfigRuleException":
            self = .noSuchConfigRuleException(message: message)
        case "NoSuchConfigRuleInConformancePackException":
            self = .noSuchConfigRuleInConformancePackException(message: message)
        case "NoSuchConfigurationAggregatorException":
            self = .noSuchConfigurationAggregatorException(message: message)
        case "NoSuchConfigurationRecorderException":
            self = .noSuchConfigurationRecorderException(message: message)
        case "NoSuchConformancePackException":
            self = .noSuchConformancePackException(message: message)
        case "NoSuchDeliveryChannelException":
            self = .noSuchDeliveryChannelException(message: message)
        case "NoSuchOrganizationConfigRuleException":
            self = .noSuchOrganizationConfigRuleException(message: message)
        case "NoSuchOrganizationConformancePackException":
            self = .noSuchOrganizationConformancePackException(message: message)
        case "NoSuchRemediationConfigurationException":
            self = .noSuchRemediationConfigurationException(message: message)
        case "NoSuchRemediationExceptionException":
            self = .noSuchRemediationExceptionException(message: message)
        case "NoSuchRetentionConfigurationException":
            self = .noSuchRetentionConfigurationException(message: message)
        case "OrganizationAccessDeniedException":
            self = .organizationAccessDeniedException(message: message)
        case "OrganizationAllFeaturesNotEnabledException":
            self = .organizationAllFeaturesNotEnabledException(message: message)
        case "OrganizationConformancePackTemplateValidationException":
            self = .organizationConformancePackTemplateValidationException(message: message)
        case "OversizedConfigurationItemException":
            self = .oversizedConfigurationItemException(message: message)
        case "RemediationInProgressException":
            self = .remediationInProgressException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotDiscoveredException":
            self = .resourceNotDiscoveredException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension ConfigServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .conformancePackTemplateValidationException(let message):
            return "ConformancePackTemplateValidationException: \(message ?? "")"
        case .insufficientDeliveryPolicyException(let message):
            return "InsufficientDeliveryPolicyException: \(message ?? "")"
        case .insufficientPermissionsException(let message):
            return "InsufficientPermissionsException: \(message ?? "")"
        case .invalidConfigurationRecorderNameException(let message):
            return "InvalidConfigurationRecorderNameException: \(message ?? "")"
        case .invalidDeliveryChannelNameException(let message):
            return "InvalidDeliveryChannelNameException: \(message ?? "")"
        case .invalidExpressionException(let message):
            return "InvalidExpressionException: \(message ?? "")"
        case .invalidLimitException(let message):
            return "InvalidLimitException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .invalidRecordingGroupException(let message):
            return "InvalidRecordingGroupException: \(message ?? "")"
        case .invalidResultTokenException(let message):
            return "InvalidResultTokenException: \(message ?? "")"
        case .invalidRoleException(let message):
            return "InvalidRoleException: \(message ?? "")"
        case .invalidS3KeyPrefixException(let message):
            return "InvalidS3KeyPrefixException: \(message ?? "")"
        case .invalidSNSTopicARNException(let message):
            return "InvalidSNSTopicARNException: \(message ?? "")"
        case .invalidTimeRangeException(let message):
            return "InvalidTimeRangeException: \(message ?? "")"
        case .lastDeliveryChannelDeleteFailedException(let message):
            return "LastDeliveryChannelDeleteFailedException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .maxActiveResourcesExceededException(let message):
            return "MaxActiveResourcesExceededException: \(message ?? "")"
        case .maxNumberOfConfigRulesExceededException(let message):
            return "MaxNumberOfConfigRulesExceededException: \(message ?? "")"
        case .maxNumberOfConfigurationRecordersExceededException(let message):
            return "MaxNumberOfConfigurationRecordersExceededException: \(message ?? "")"
        case .maxNumberOfConformancePacksExceededException(let message):
            return "MaxNumberOfConformancePacksExceededException: \(message ?? "")"
        case .maxNumberOfDeliveryChannelsExceededException(let message):
            return "MaxNumberOfDeliveryChannelsExceededException: \(message ?? "")"
        case .maxNumberOfOrganizationConfigRulesExceededException(let message):
            return "MaxNumberOfOrganizationConfigRulesExceededException: \(message ?? "")"
        case .maxNumberOfOrganizationConformancePacksExceededException(let message):
            return "MaxNumberOfOrganizationConformancePacksExceededException: \(message ?? "")"
        case .maxNumberOfRetentionConfigurationsExceededException(let message):
            return "MaxNumberOfRetentionConfigurationsExceededException: \(message ?? "")"
        case .noAvailableConfigurationRecorderException(let message):
            return "NoAvailableConfigurationRecorderException: \(message ?? "")"
        case .noAvailableDeliveryChannelException(let message):
            return "NoAvailableDeliveryChannelException: \(message ?? "")"
        case .noAvailableOrganizationException(let message):
            return "NoAvailableOrganizationException: \(message ?? "")"
        case .noRunningConfigurationRecorderException(let message):
            return "NoRunningConfigurationRecorderException: \(message ?? "")"
        case .noSuchBucketException(let message):
            return "NoSuchBucketException: \(message ?? "")"
        case .noSuchConfigRuleException(let message):
            return "NoSuchConfigRuleException: \(message ?? "")"
        case .noSuchConfigRuleInConformancePackException(let message):
            return "NoSuchConfigRuleInConformancePackException: \(message ?? "")"
        case .noSuchConfigurationAggregatorException(let message):
            return "NoSuchConfigurationAggregatorException: \(message ?? "")"
        case .noSuchConfigurationRecorderException(let message):
            return "NoSuchConfigurationRecorderException: \(message ?? "")"
        case .noSuchConformancePackException(let message):
            return "NoSuchConformancePackException: \(message ?? "")"
        case .noSuchDeliveryChannelException(let message):
            return "NoSuchDeliveryChannelException: \(message ?? "")"
        case .noSuchOrganizationConfigRuleException(let message):
            return "NoSuchOrganizationConfigRuleException: \(message ?? "")"
        case .noSuchOrganizationConformancePackException(let message):
            return "NoSuchOrganizationConformancePackException: \(message ?? "")"
        case .noSuchRemediationConfigurationException(let message):
            return "NoSuchRemediationConfigurationException: \(message ?? "")"
        case .noSuchRemediationExceptionException(let message):
            return "NoSuchRemediationExceptionException: \(message ?? "")"
        case .noSuchRetentionConfigurationException(let message):
            return "NoSuchRetentionConfigurationException: \(message ?? "")"
        case .organizationAccessDeniedException(let message):
            return "OrganizationAccessDeniedException: \(message ?? "")"
        case .organizationAllFeaturesNotEnabledException(let message):
            return "OrganizationAllFeaturesNotEnabledException: \(message ?? "")"
        case .organizationConformancePackTemplateValidationException(let message):
            return "OrganizationConformancePackTemplateValidationException: \(message ?? "")"
        case .oversizedConfigurationItemException(let message):
            return "OversizedConfigurationItemException: \(message ?? "")"
        case .remediationInProgressException(let message):
            return "RemediationInProgressException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotDiscoveredException(let message):
            return "ResourceNotDiscoveredException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .tooManyTagsException(let message):
            return "TooManyTagsException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
