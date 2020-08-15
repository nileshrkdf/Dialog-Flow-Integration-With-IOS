#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Agent.pbrpc.h"
#import <googleapis/Agent.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
#import <googleapis/Operations.pbobjc.h>
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Empty.pbobjc.h>
#else
#import "google/protobuf/Empty.pbobjc.h"
#endif
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/FieldMask.pbobjc.h>
#else
#import "google/protobuf/FieldMask.pbobjc.h"
#endif
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Struct.pbobjc.h>
#else
#import "google/protobuf/Struct.pbobjc.h"
#endif

@implementation DFAgents

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Agents"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Agents"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark GetAgent(GetAgentRequest) returns (Agent)

/**
 * Retrieves the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getAgentWithRequest:(DFGetAgentRequest *)request handler:(void(^)(DFAgent *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetAgentWithRequest:(DFGetAgentRequest *)request handler:(void(^)(DFAgent *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFAgent class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified agent.
 */
- (GRPCUnaryProtoCall *)getAgentWithMessage:(DFGetAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAgent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFAgent class]];
}

#pragma mark SearchAgents(SearchAgentsRequest) returns (SearchAgentsResponse)

/**
 * Returns the list of agents.
 * 
 * Since there is at most one conversational agent per project, this method is
 * useful primarily for listing all agents across projects the caller has
 * access to. One can achieve that with a wildcard project collection id "-".
 * Refer to [List
 * Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)searchAgentsWithRequest:(DFSearchAgentsRequest *)request handler:(void(^)(DFSearchAgentsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSearchAgentsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of agents.
 * 
 * Since there is at most one conversational agent per project, this method is
 * useful primarily for listing all agents across projects the caller has
 * access to. One can achieve that with a wildcard project collection id "-".
 * Refer to [List
 * Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToSearchAgentsWithRequest:(DFSearchAgentsRequest *)request handler:(void(^)(DFSearchAgentsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SearchAgents"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFSearchAgentsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of agents.
 * 
 * Since there is at most one conversational agent per project, this method is
 * useful primarily for listing all agents across projects the caller has
 * access to. One can achieve that with a wildcard project collection id "-".
 * Refer to [List
 * Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
 */
- (GRPCUnaryProtoCall *)searchAgentsWithMessage:(DFSearchAgentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"SearchAgents"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFSearchAgentsResponse class]];
}

#pragma mark TrainAgent(TrainAgentRequest) returns (Operation)

/**
 * Trains the specified agent.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)trainAgentWithRequest:(DFTrainAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTrainAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Trains the specified agent.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToTrainAgentWithRequest:(DFTrainAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"TrainAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Trains the specified agent.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)trainAgentWithMessage:(DFTrainAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"TrainAgent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark ExportAgent(ExportAgentRequest) returns (Operation)

/**
 * Exports the specified agent to a ZIP file.
 * 
 * 
 * Operation <response: [ExportAgentResponse][google.cloud.dialogflow.v2beta1.ExportAgentResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)exportAgentWithRequest:(DFExportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToExportAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Exports the specified agent to a ZIP file.
 * 
 * 
 * Operation <response: [ExportAgentResponse][google.cloud.dialogflow.v2beta1.ExportAgentResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToExportAgentWithRequest:(DFExportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ExportAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Exports the specified agent to a ZIP file.
 * 
 * 
 * Operation <response: [ExportAgentResponse][google.cloud.dialogflow.v2beta1.ExportAgentResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)exportAgentWithMessage:(DFExportAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ExportAgent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark ImportAgent(ImportAgentRequest) returns (Operation)

/**
 * Imports the specified agent from a ZIP file.
 * 
 * Uploads new intents and entity types without deleting the existing ones.
 * Intents and entity types with the same name are replaced with the new
 * versions from ImportAgentRequest.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)importAgentWithRequest:(DFImportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToImportAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Imports the specified agent from a ZIP file.
 * 
 * Uploads new intents and entity types without deleting the existing ones.
 * Intents and entity types with the same name are replaced with the new
 * versions from ImportAgentRequest.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToImportAgentWithRequest:(DFImportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ImportAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Imports the specified agent from a ZIP file.
 * 
 * Uploads new intents and entity types without deleting the existing ones.
 * Intents and entity types with the same name are replaced with the new
 * versions from ImportAgentRequest.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)importAgentWithMessage:(DFImportAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ImportAgent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark RestoreAgent(RestoreAgentRequest) returns (Operation)

/**
 * Restores the specified agent from a ZIP file.
 * 
 * Replaces the current agent version with a new one. All the intents and
 * entity types in the older version are deleted.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)restoreAgentWithRequest:(DFRestoreAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRestoreAgentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Restores the specified agent from a ZIP file.
 * 
 * Replaces the current agent version with a new one. All the intents and
 * entity types in the older version are deleted.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToRestoreAgentWithRequest:(DFRestoreAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RestoreAgent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Restores the specified agent from a ZIP file.
 * 
 * Replaces the current agent version with a new one. All the intents and
 * entity types in the older version are deleted.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)restoreAgentWithMessage:(DFRestoreAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"RestoreAgent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

@end
#endif
