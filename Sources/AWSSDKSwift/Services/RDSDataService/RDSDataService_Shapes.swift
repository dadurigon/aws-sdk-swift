// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension RDSDataService {

    public class ArrayValue: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arrayValues", required: false, type: .list), 
            AWSShapeMember(label: "booleanValues", required: false, type: .list), 
            AWSShapeMember(label: "doubleValues", required: false, type: .list), 
            AWSShapeMember(label: "longValues", required: false, type: .list), 
            AWSShapeMember(label: "stringValues", required: false, type: .list)
        ]

        /// An array of arrays.
        public let arrayValues: [ArrayValue]?
        /// An array of Boolean values.
        public let booleanValues: [Bool]?
        /// An array of integers.
        public let doubleValues: [Double]?
        /// An array of floating point numbers.
        public let longValues: [Int64]?
        /// An array of strings.
        public let stringValues: [String]?

        public init(arrayValues: [ArrayValue]? = nil, booleanValues: [Bool]? = nil, doubleValues: [Double]? = nil, longValues: [Int64]? = nil, stringValues: [String]? = nil) {
            self.arrayValues = arrayValues
            self.booleanValues = booleanValues
            self.doubleValues = doubleValues
            self.longValues = longValues
            self.stringValues = stringValues
        }

        private enum CodingKeys: String, CodingKey {
            case arrayValues = "arrayValues"
            case booleanValues = "booleanValues"
            case doubleValues = "doubleValues"
            case longValues = "longValues"
            case stringValues = "stringValues"
        }
    }

    public struct BatchExecuteStatementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "database", required: false, type: .string), 
            AWSShapeMember(label: "parameterSets", required: false, type: .list), 
            AWSShapeMember(label: "resourceArn", required: true, type: .string), 
            AWSShapeMember(label: "schema", required: false, type: .string), 
            AWSShapeMember(label: "secretArn", required: true, type: .string), 
            AWSShapeMember(label: "sql", required: true, type: .string), 
            AWSShapeMember(label: "transactionId", required: false, type: .string)
        ]

        /// The name of the database.
        public let database: String?
        /// The parameter set for the batch operation. The maximum number of parameters in a parameter set is 1,000.
        public let parameterSets: [[SqlParameter]]?
        /// The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
        public let resourceArn: String
        /// The name of the database schema.
        public let schema: String?
        /// The name or ARN of the secret that enables access to the DB cluster.
        public let secretArn: String
        /// The SQL statement to run.
        public let sql: String
        /// The identifier of a transaction that was started by using the BeginTransaction operation. Specify the transaction ID of the transaction that you want to include the SQL statement in. If the SQL statement is not part of a transaction, don't set this parameter.
        public let transactionId: String?

        public init(database: String? = nil, parameterSets: [[SqlParameter]]? = nil, resourceArn: String, schema: String? = nil, secretArn: String, sql: String, transactionId: String? = nil) {
            self.database = database
            self.parameterSets = parameterSets
            self.resourceArn = resourceArn
            self.schema = schema
            self.secretArn = secretArn
            self.sql = sql
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try validate(self.database, name:"database", parent: name, max: 64)
            try validate(self.database, name:"database", parent: name, min: 0)
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 100)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 11)
            try validate(self.schema, name:"schema", parent: name, max: 64)
            try validate(self.schema, name:"schema", parent: name, min: 0)
            try validate(self.secretArn, name:"secretArn", parent: name, max: 100)
            try validate(self.secretArn, name:"secretArn", parent: name, min: 11)
            try validate(self.sql, name:"sql", parent: name, max: 65536)
            try validate(self.sql, name:"sql", parent: name, min: 0)
            try validate(self.transactionId, name:"transactionId", parent: name, max: 192)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case database = "database"
            case parameterSets = "parameterSets"
            case resourceArn = "resourceArn"
            case schema = "schema"
            case secretArn = "secretArn"
            case sql = "sql"
            case transactionId = "transactionId"
        }
    }

    public struct BatchExecuteStatementResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "updateResults", required: false, type: .list)
        ]

        /// The execution results of each batch entry.
        public let updateResults: [UpdateResult]?

        public init(updateResults: [UpdateResult]? = nil) {
            self.updateResults = updateResults
        }

        private enum CodingKeys: String, CodingKey {
            case updateResults = "updateResults"
        }
    }

    public struct BeginTransactionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "database", required: false, type: .string), 
            AWSShapeMember(label: "resourceArn", required: true, type: .string), 
            AWSShapeMember(label: "schema", required: false, type: .string), 
            AWSShapeMember(label: "secretArn", required: true, type: .string)
        ]

        /// The name of the database.
        public let database: String?
        /// The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
        public let resourceArn: String
        /// The name of the database schema.
        public let schema: String?
        /// The name or ARN of the secret that enables access to the DB cluster.
        public let secretArn: String

        public init(database: String? = nil, resourceArn: String, schema: String? = nil, secretArn: String) {
            self.database = database
            self.resourceArn = resourceArn
            self.schema = schema
            self.secretArn = secretArn
        }

        public func validate(name: String) throws {
            try validate(self.database, name:"database", parent: name, max: 64)
            try validate(self.database, name:"database", parent: name, min: 0)
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 100)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 11)
            try validate(self.schema, name:"schema", parent: name, max: 64)
            try validate(self.schema, name:"schema", parent: name, min: 0)
            try validate(self.secretArn, name:"secretArn", parent: name, max: 100)
            try validate(self.secretArn, name:"secretArn", parent: name, min: 11)
        }

        private enum CodingKeys: String, CodingKey {
            case database = "database"
            case resourceArn = "resourceArn"
            case schema = "schema"
            case secretArn = "secretArn"
        }
    }

    public struct BeginTransactionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "transactionId", required: false, type: .string)
        ]

        /// The transaction ID of the transaction started by the call.
        public let transactionId: String?

        public init(transactionId: String? = nil) {
            self.transactionId = transactionId
        }

        private enum CodingKeys: String, CodingKey {
            case transactionId = "transactionId"
        }
    }

    public struct ColumnMetadata: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arrayBaseColumnType", required: false, type: .integer), 
            AWSShapeMember(label: "isAutoIncrement", required: false, type: .boolean), 
            AWSShapeMember(label: "isCaseSensitive", required: false, type: .boolean), 
            AWSShapeMember(label: "isCurrency", required: false, type: .boolean), 
            AWSShapeMember(label: "isSigned", required: false, type: .boolean), 
            AWSShapeMember(label: "label", required: false, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "nullable", required: false, type: .integer), 
            AWSShapeMember(label: "precision", required: false, type: .integer), 
            AWSShapeMember(label: "scale", required: false, type: .integer), 
            AWSShapeMember(label: "schemaName", required: false, type: .string), 
            AWSShapeMember(label: "tableName", required: false, type: .string), 
            AWSShapeMember(label: "type", required: false, type: .integer), 
            AWSShapeMember(label: "typeName", required: false, type: .string)
        ]

        /// The type of the column.
        public let arrayBaseColumnType: Int?
        /// A value that indicates whether the column increments automatically.
        public let isAutoIncrement: Bool?
        /// A value that indicates whether the column is case-sensitive.
        public let isCaseSensitive: Bool?
        /// A value that indicates whether the column contains currency values.
        public let isCurrency: Bool?
        /// A value that indicates whether an integer column is signed.
        public let isSigned: Bool?
        /// The label for the column.
        public let label: String?
        /// The name of the column.
        public let name: String?
        /// A value that indicates whether the column is nullable.
        public let nullable: Int?
        /// The precision value of a decimal number column.
        public let precision: Int?
        /// The scale value of a decimal number column.
        public let scale: Int?
        /// The name of the schema that owns the table that includes the column.
        public let schemaName: String?
        /// The name of the table that includes the column.
        public let tableName: String?
        /// The type of the column.
        public let `type`: Int?
        /// The database-specific data type of the column.
        public let typeName: String?

        public init(arrayBaseColumnType: Int? = nil, isAutoIncrement: Bool? = nil, isCaseSensitive: Bool? = nil, isCurrency: Bool? = nil, isSigned: Bool? = nil, label: String? = nil, name: String? = nil, nullable: Int? = nil, precision: Int? = nil, scale: Int? = nil, schemaName: String? = nil, tableName: String? = nil, type: Int? = nil, typeName: String? = nil) {
            self.arrayBaseColumnType = arrayBaseColumnType
            self.isAutoIncrement = isAutoIncrement
            self.isCaseSensitive = isCaseSensitive
            self.isCurrency = isCurrency
            self.isSigned = isSigned
            self.label = label
            self.name = name
            self.nullable = nullable
            self.precision = precision
            self.scale = scale
            self.schemaName = schemaName
            self.tableName = tableName
            self.`type` = `type`
            self.typeName = typeName
        }

        private enum CodingKeys: String, CodingKey {
            case arrayBaseColumnType = "arrayBaseColumnType"
            case isAutoIncrement = "isAutoIncrement"
            case isCaseSensitive = "isCaseSensitive"
            case isCurrency = "isCurrency"
            case isSigned = "isSigned"
            case label = "label"
            case name = "name"
            case nullable = "nullable"
            case precision = "precision"
            case scale = "scale"
            case schemaName = "schemaName"
            case tableName = "tableName"
            case `type` = "type"
            case typeName = "typeName"
        }
    }

    public struct CommitTransactionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", required: true, type: .string), 
            AWSShapeMember(label: "secretArn", required: true, type: .string), 
            AWSShapeMember(label: "transactionId", required: true, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
        public let resourceArn: String
        /// The name or ARN of the secret that enables access to the DB cluster.
        public let secretArn: String
        /// The identifier of the transaction to end and commit.
        public let transactionId: String

        public init(resourceArn: String, secretArn: String, transactionId: String) {
            self.resourceArn = resourceArn
            self.secretArn = secretArn
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 100)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 11)
            try validate(self.secretArn, name:"secretArn", parent: name, max: 100)
            try validate(self.secretArn, name:"secretArn", parent: name, min: 11)
            try validate(self.transactionId, name:"transactionId", parent: name, max: 192)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case secretArn = "secretArn"
            case transactionId = "transactionId"
        }
    }

    public struct CommitTransactionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "transactionStatus", required: false, type: .string)
        ]

        /// The status of the commit operation.
        public let transactionStatus: String?

        public init(transactionStatus: String? = nil) {
            self.transactionStatus = transactionStatus
        }

        private enum CodingKeys: String, CodingKey {
            case transactionStatus = "transactionStatus"
        }
    }

    public enum DecimalReturnType: String, CustomStringConvertible, Codable {
        case doubleOrLong = "DOUBLE_OR_LONG"
        case string = "STRING"
        public var description: String { return self.rawValue }
    }

    public struct ExecuteSqlRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "awsSecretStoreArn", required: true, type: .string), 
            AWSShapeMember(label: "database", required: false, type: .string), 
            AWSShapeMember(label: "dbClusterOrInstanceArn", required: true, type: .string), 
            AWSShapeMember(label: "schema", required: false, type: .string), 
            AWSShapeMember(label: "sqlStatements", required: true, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the secret that enables access to the DB cluster.
        public let awsSecretStoreArn: String
        /// The name of the database.
        public let database: String?
        /// The ARN of the Aurora Serverless DB cluster.
        public let dbClusterOrInstanceArn: String
        /// The name of the database schema.
        public let schema: String?
        /// One or more SQL statements to run on the DB cluster. You can separate SQL statements from each other with a semicolon (;). Any valid SQL statement is permitted, including data definition, data manipulation, and commit statements. 
        public let sqlStatements: String

        public init(awsSecretStoreArn: String, database: String? = nil, dbClusterOrInstanceArn: String, schema: String? = nil, sqlStatements: String) {
            self.awsSecretStoreArn = awsSecretStoreArn
            self.database = database
            self.dbClusterOrInstanceArn = dbClusterOrInstanceArn
            self.schema = schema
            self.sqlStatements = sqlStatements
        }

        public func validate(name: String) throws {
            try validate(self.awsSecretStoreArn, name:"awsSecretStoreArn", parent: name, max: 100)
            try validate(self.awsSecretStoreArn, name:"awsSecretStoreArn", parent: name, min: 11)
            try validate(self.database, name:"database", parent: name, max: 64)
            try validate(self.database, name:"database", parent: name, min: 0)
            try validate(self.dbClusterOrInstanceArn, name:"dbClusterOrInstanceArn", parent: name, max: 100)
            try validate(self.dbClusterOrInstanceArn, name:"dbClusterOrInstanceArn", parent: name, min: 11)
            try validate(self.schema, name:"schema", parent: name, max: 64)
            try validate(self.schema, name:"schema", parent: name, min: 0)
            try validate(self.sqlStatements, name:"sqlStatements", parent: name, max: 65536)
            try validate(self.sqlStatements, name:"sqlStatements", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case awsSecretStoreArn = "awsSecretStoreArn"
            case database = "database"
            case dbClusterOrInstanceArn = "dbClusterOrInstanceArn"
            case schema = "schema"
            case sqlStatements = "sqlStatements"
        }
    }

    public struct ExecuteSqlResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "sqlStatementResults", required: false, type: .list)
        ]

        /// The results of the SQL statement or statements.
        public let sqlStatementResults: [SqlStatementResult]?

        public init(sqlStatementResults: [SqlStatementResult]? = nil) {
            self.sqlStatementResults = sqlStatementResults
        }

        private enum CodingKeys: String, CodingKey {
            case sqlStatementResults = "sqlStatementResults"
        }
    }

    public struct ExecuteStatementRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "continueAfterTimeout", required: false, type: .boolean), 
            AWSShapeMember(label: "database", required: false, type: .string), 
            AWSShapeMember(label: "includeResultMetadata", required: false, type: .boolean), 
            AWSShapeMember(label: "parameters", required: false, type: .list), 
            AWSShapeMember(label: "resourceArn", required: true, type: .string), 
            AWSShapeMember(label: "resultSetOptions", required: false, type: .structure), 
            AWSShapeMember(label: "schema", required: false, type: .string), 
            AWSShapeMember(label: "secretArn", required: true, type: .string), 
            AWSShapeMember(label: "sql", required: true, type: .string), 
            AWSShapeMember(label: "transactionId", required: false, type: .string)
        ]

        /// A value that indicates whether to continue running the statement after the call times out. By default, the statement stops running when the call times out.  For DDL statements, we recommend continuing to run the statement after the call times out. When a DDL statement terminates before it is finished running, it can result in errors and possibly corrupted data structures. 
        public let continueAfterTimeout: Bool?
        /// The name of the database.
        public let database: String?
        /// A value that indicates whether to include metadata in the results.
        public let includeResultMetadata: Bool?
        /// The parameters for the SQL statement.
        public let parameters: [SqlParameter]?
        /// The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
        public let resourceArn: String
        /// Options that control how the result set is returned.
        public let resultSetOptions: ResultSetOptions?
        /// The name of the database schema.
        public let schema: String?
        /// The name or ARN of the secret that enables access to the DB cluster.
        public let secretArn: String
        /// The SQL statement to run.
        public let sql: String
        /// The identifier of a transaction that was started by using the BeginTransaction operation. Specify the transaction ID of the transaction that you want to include the SQL statement in. If the SQL statement is not part of a transaction, don't set this parameter.
        public let transactionId: String?

        public init(continueAfterTimeout: Bool? = nil, database: String? = nil, includeResultMetadata: Bool? = nil, parameters: [SqlParameter]? = nil, resourceArn: String, resultSetOptions: ResultSetOptions? = nil, schema: String? = nil, secretArn: String, sql: String, transactionId: String? = nil) {
            self.continueAfterTimeout = continueAfterTimeout
            self.database = database
            self.includeResultMetadata = includeResultMetadata
            self.parameters = parameters
            self.resourceArn = resourceArn
            self.resultSetOptions = resultSetOptions
            self.schema = schema
            self.secretArn = secretArn
            self.sql = sql
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try validate(self.database, name:"database", parent: name, max: 64)
            try validate(self.database, name:"database", parent: name, min: 0)
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 100)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 11)
            try validate(self.schema, name:"schema", parent: name, max: 64)
            try validate(self.schema, name:"schema", parent: name, min: 0)
            try validate(self.secretArn, name:"secretArn", parent: name, max: 100)
            try validate(self.secretArn, name:"secretArn", parent: name, min: 11)
            try validate(self.sql, name:"sql", parent: name, max: 65536)
            try validate(self.sql, name:"sql", parent: name, min: 0)
            try validate(self.transactionId, name:"transactionId", parent: name, max: 192)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case continueAfterTimeout = "continueAfterTimeout"
            case database = "database"
            case includeResultMetadata = "includeResultMetadata"
            case parameters = "parameters"
            case resourceArn = "resourceArn"
            case resultSetOptions = "resultSetOptions"
            case schema = "schema"
            case secretArn = "secretArn"
            case sql = "sql"
            case transactionId = "transactionId"
        }
    }

    public struct ExecuteStatementResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "columnMetadata", required: false, type: .list), 
            AWSShapeMember(label: "generatedFields", required: false, type: .list), 
            AWSShapeMember(label: "numberOfRecordsUpdated", required: false, type: .long), 
            AWSShapeMember(label: "records", required: false, type: .list)
        ]

        /// Metadata for the columns included in the results.
        public let columnMetadata: [ColumnMetadata]?
        /// Values for fields generated during the request.  &lt;note&gt; &lt;p&gt;The &lt;code&gt;generatedFields&lt;/code&gt; data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the &lt;code&gt;RETURNING&lt;/code&gt; clause. For more information, see &lt;a href=&quot;https://www.postgresql.org/docs/10/dml-returning.html&quot;&gt;Returning Data From Modified Rows&lt;/a&gt; in the PostgreSQL documentation.&lt;/p&gt; &lt;/note&gt; 
        public let generatedFields: [Field]?
        /// The number of records updated by the request.
        public let numberOfRecordsUpdated: Int64?
        /// The records returned by the SQL statement.
        public let records: [[Field]]?

        public init(columnMetadata: [ColumnMetadata]? = nil, generatedFields: [Field]? = nil, numberOfRecordsUpdated: Int64? = nil, records: [[Field]]? = nil) {
            self.columnMetadata = columnMetadata
            self.generatedFields = generatedFields
            self.numberOfRecordsUpdated = numberOfRecordsUpdated
            self.records = records
        }

        private enum CodingKeys: String, CodingKey {
            case columnMetadata = "columnMetadata"
            case generatedFields = "generatedFields"
            case numberOfRecordsUpdated = "numberOfRecordsUpdated"
            case records = "records"
        }
    }

    public struct Field: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arrayValue", required: false, type: .structure), 
            AWSShapeMember(label: "blobValue", required: false, type: .blob), 
            AWSShapeMember(label: "booleanValue", required: false, type: .boolean), 
            AWSShapeMember(label: "doubleValue", required: false, type: .double), 
            AWSShapeMember(label: "isNull", required: false, type: .boolean), 
            AWSShapeMember(label: "longValue", required: false, type: .long), 
            AWSShapeMember(label: "stringValue", required: false, type: .string)
        ]

        /// An array of values.
        public let arrayValue: ArrayValue?
        /// A value of BLOB data type.
        public let blobValue: Data?
        /// A value of Boolean data type.
        public let booleanValue: Bool?
        /// A value of double data type.
        public let doubleValue: Double?
        /// A NULL value.
        public let isNull: Bool?
        /// A value of long data type.
        public let longValue: Int64?
        /// A value of string data type.
        public let stringValue: String?

        public init(arrayValue: ArrayValue? = nil, blobValue: Data? = nil, booleanValue: Bool? = nil, doubleValue: Double? = nil, isNull: Bool? = nil, longValue: Int64? = nil, stringValue: String? = nil) {
            self.arrayValue = arrayValue
            self.blobValue = blobValue
            self.booleanValue = booleanValue
            self.doubleValue = doubleValue
            self.isNull = isNull
            self.longValue = longValue
            self.stringValue = stringValue
        }

        private enum CodingKeys: String, CodingKey {
            case arrayValue = "arrayValue"
            case blobValue = "blobValue"
            case booleanValue = "booleanValue"
            case doubleValue = "doubleValue"
            case isNull = "isNull"
            case longValue = "longValue"
            case stringValue = "stringValue"
        }
    }

    public struct Record: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "values", required: false, type: .list)
        ]

        /// The values returned in the record.
        public let values: [Value]?

        public init(values: [Value]? = nil) {
            self.values = values
        }

        private enum CodingKeys: String, CodingKey {
            case values = "values"
        }
    }

    public struct ResultFrame: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "records", required: false, type: .list), 
            AWSShapeMember(label: "resultSetMetadata", required: false, type: .structure)
        ]

        /// The records in the result set.
        public let records: [Record]?
        /// The result-set metadata in the result set.
        public let resultSetMetadata: ResultSetMetadata?

        public init(records: [Record]? = nil, resultSetMetadata: ResultSetMetadata? = nil) {
            self.records = records
            self.resultSetMetadata = resultSetMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case records = "records"
            case resultSetMetadata = "resultSetMetadata"
        }
    }

    public struct ResultSetMetadata: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "columnCount", required: false, type: .long), 
            AWSShapeMember(label: "columnMetadata", required: false, type: .list)
        ]

        /// The number of columns in the result set.
        public let columnCount: Int64?
        /// The metadata of the columns in the result set.
        public let columnMetadata: [ColumnMetadata]?

        public init(columnCount: Int64? = nil, columnMetadata: [ColumnMetadata]? = nil) {
            self.columnCount = columnCount
            self.columnMetadata = columnMetadata
        }

        private enum CodingKeys: String, CodingKey {
            case columnCount = "columnCount"
            case columnMetadata = "columnMetadata"
        }
    }

    public struct ResultSetOptions: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "decimalReturnType", required: false, type: .enum)
        ]

        /// A value that indicates how a field of DECIMAL type is represented in the response. The value of STRING, the default, specifies that it is converted to a String value. The value of DOUBLE_OR_LONG specifies that it is converted to a Long value if its scale is 0, or to a Double value otherwise.  Conversion to Double or Long can result in roundoff errors due to precision loss. We recommend converting to String, especially when working with currency values. 
        public let decimalReturnType: DecimalReturnType?

        public init(decimalReturnType: DecimalReturnType? = nil) {
            self.decimalReturnType = decimalReturnType
        }

        private enum CodingKeys: String, CodingKey {
            case decimalReturnType = "decimalReturnType"
        }
    }

    public struct RollbackTransactionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "resourceArn", required: true, type: .string), 
            AWSShapeMember(label: "secretArn", required: true, type: .string), 
            AWSShapeMember(label: "transactionId", required: true, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
        public let resourceArn: String
        /// The name or ARN of the secret that enables access to the DB cluster.
        public let secretArn: String
        /// The identifier of the transaction to roll back.
        public let transactionId: String

        public init(resourceArn: String, secretArn: String, transactionId: String) {
            self.resourceArn = resourceArn
            self.secretArn = secretArn
            self.transactionId = transactionId
        }

        public func validate(name: String) throws {
            try validate(self.resourceArn, name:"resourceArn", parent: name, max: 100)
            try validate(self.resourceArn, name:"resourceArn", parent: name, min: 11)
            try validate(self.secretArn, name:"secretArn", parent: name, max: 100)
            try validate(self.secretArn, name:"secretArn", parent: name, min: 11)
            try validate(self.transactionId, name:"transactionId", parent: name, max: 192)
            try validate(self.transactionId, name:"transactionId", parent: name, min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case resourceArn = "resourceArn"
            case secretArn = "secretArn"
            case transactionId = "transactionId"
        }
    }

    public struct RollbackTransactionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "transactionStatus", required: false, type: .string)
        ]

        /// The status of the rollback operation.
        public let transactionStatus: String?

        public init(transactionStatus: String? = nil) {
            self.transactionStatus = transactionStatus
        }

        private enum CodingKeys: String, CodingKey {
            case transactionStatus = "transactionStatus"
        }
    }

    public struct SqlParameter: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "typeHint", required: false, type: .enum), 
            AWSShapeMember(label: "value", required: false, type: .structure)
        ]

        /// The name of the parameter.
        public let name: String?
        /// A hint that specifies the correct object type for data type mapping.  Values:     DECIMAL - The corresponding String parameter value is sent as an object of DECIMAL type to the database.    TIMESTAMP - The corresponding String parameter value is sent as an object of TIMESTAMP type to the database. The accepted format is YYYY-MM-DD HH:MM:SS[.FFF].    TIME - The corresponding String parameter value is sent as an object of TIME type to the database. The accepted format is HH:MM:SS[.FFF].    DATE - The corresponding String parameter value is sent as an object of DATE type to the database. The accepted format is YYYY-MM-DD.  
        public let typeHint: TypeHint?
        /// The value of the parameter.
        public let value: Field?

        public init(name: String? = nil, typeHint: TypeHint? = nil, value: Field? = nil) {
            self.name = name
            self.typeHint = typeHint
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case name = "name"
            case typeHint = "typeHint"
            case value = "value"
        }
    }

    public struct SqlStatementResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "numberOfRecordsUpdated", required: false, type: .long), 
            AWSShapeMember(label: "resultFrame", required: false, type: .structure)
        ]

        /// The number of records updated by a SQL statement.
        public let numberOfRecordsUpdated: Int64?
        /// The result set of the SQL statement.
        public let resultFrame: ResultFrame?

        public init(numberOfRecordsUpdated: Int64? = nil, resultFrame: ResultFrame? = nil) {
            self.numberOfRecordsUpdated = numberOfRecordsUpdated
            self.resultFrame = resultFrame
        }

        private enum CodingKeys: String, CodingKey {
            case numberOfRecordsUpdated = "numberOfRecordsUpdated"
            case resultFrame = "resultFrame"
        }
    }

    public struct StructValue: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "attributes", required: false, type: .list)
        ]

        /// The attributes returned in the record.
        public let attributes: [Value]?

        public init(attributes: [Value]? = nil) {
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case attributes = "attributes"
        }
    }

    public enum TypeHint: String, CustomStringConvertible, Codable {
        case date = "DATE"
        case decimal = "DECIMAL"
        case time = "TIME"
        case timestamp = "TIMESTAMP"
        public var description: String { return self.rawValue }
    }

    public struct UpdateResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "generatedFields", required: false, type: .list)
        ]

        /// Values for fields generated during the request.
        public let generatedFields: [Field]?

        public init(generatedFields: [Field]? = nil) {
            self.generatedFields = generatedFields
        }

        private enum CodingKeys: String, CodingKey {
            case generatedFields = "generatedFields"
        }
    }

    public class Value: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arrayValues", required: false, type: .list), 
            AWSShapeMember(label: "bigIntValue", required: false, type: .long), 
            AWSShapeMember(label: "bitValue", required: false, type: .boolean), 
            AWSShapeMember(label: "blobValue", required: false, type: .blob), 
            AWSShapeMember(label: "doubleValue", required: false, type: .double), 
            AWSShapeMember(label: "intValue", required: false, type: .integer), 
            AWSShapeMember(label: "isNull", required: false, type: .boolean), 
            AWSShapeMember(label: "realValue", required: false, type: .float), 
            AWSShapeMember(label: "stringValue", required: false, type: .string), 
            AWSShapeMember(label: "structValue", required: false, type: .structure)
        ]

        /// An array of column values.
        public let arrayValues: [Value]?
        /// A value for a column of big integer data type.
        public let bigIntValue: Int64?
        /// A value for a column of BIT data type.
        public let bitValue: Bool?
        /// A value for a column of BLOB data type.
        public let blobValue: Data?
        /// A value for a column of double data type.
        public let doubleValue: Double?
        /// A value for a column of integer data type.
        public let intValue: Int?
        /// A NULL value.
        public let isNull: Bool?
        /// A value for a column of real data type.
        public let realValue: Float?
        /// A value for a column of string data type.
        public let stringValue: String?
        /// A value for a column of STRUCT data type.
        public let structValue: StructValue?

        public init(arrayValues: [Value]? = nil, bigIntValue: Int64? = nil, bitValue: Bool? = nil, blobValue: Data? = nil, doubleValue: Double? = nil, intValue: Int? = nil, isNull: Bool? = nil, realValue: Float? = nil, stringValue: String? = nil, structValue: StructValue? = nil) {
            self.arrayValues = arrayValues
            self.bigIntValue = bigIntValue
            self.bitValue = bitValue
            self.blobValue = blobValue
            self.doubleValue = doubleValue
            self.intValue = intValue
            self.isNull = isNull
            self.realValue = realValue
            self.stringValue = stringValue
            self.structValue = structValue
        }

        private enum CodingKeys: String, CodingKey {
            case arrayValues = "arrayValues"
            case bigIntValue = "bigIntValue"
            case bitValue = "bitValue"
            case blobValue = "blobValue"
            case doubleValue = "doubleValue"
            case intValue = "intValue"
            case isNull = "isNull"
            case realValue = "realValue"
            case stringValue = "stringValue"
            case structValue = "structValue"
        }
    }
}
