// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ApplicationDiscoveryService
public enum ApplicationDiscoveryServiceErrorType: AWSErrorType {
    case authorizationErrorException(message: String?)
    case conflictErrorException(message: String?)
    case homeRegionNotSetException(message: String?)
    case invalidParameterException(message: String?)
    case invalidParameterValueException(message: String?)
    case operationNotPermittedException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case serverInternalErrorException(message: String?)
}

extension ApplicationDiscoveryServiceErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AuthorizationErrorException":
            self = .authorizationErrorException(message: message)
        case "ConflictErrorException":
            self = .conflictErrorException(message: message)
        case "HomeRegionNotSetException":
            self = .homeRegionNotSetException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServerInternalErrorException":
            self = .serverInternalErrorException(message: message)
        default:
            return nil
        }
    }
}

extension ApplicationDiscoveryServiceErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .authorizationErrorException(let message):
            return "AuthorizationErrorException: \(message ?? "")"
        case .conflictErrorException(let message):
            return "ConflictErrorException: \(message ?? "")"
        case .homeRegionNotSetException(let message):
            return "HomeRegionNotSetException: \(message ?? "")"
        case .invalidParameterException(let message):
            return "InvalidParameterException: \(message ?? "")"
        case .invalidParameterValueException(let message):
            return "InvalidParameterValueException: \(message ?? "")"
        case .operationNotPermittedException(let message):
            return "OperationNotPermittedException: \(message ?? "")"
        case .resourceInUseException(let message):
            return "ResourceInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .serverInternalErrorException(let message):
            return "ServerInternalErrorException: \(message ?? "")"
        }
    }
}
