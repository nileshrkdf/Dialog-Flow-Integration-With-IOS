#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Agent.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFAgent;
@class DFExportAgentRequest;
@class DFGetAgentRequest;
@class DFImportAgentRequest;
@class DFRestoreAgentRequest;
@class DFSearchAgentsRequest;
@class DFSearchAgentsResponse;
@class DFTrainAgentRequest;
@class Operation;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFAgents2 <NSObject>

#pragma mark GetAgent(GetAgentRequest) returns (Agent)

/**
 * Retrieves the specified agent.
 */
- (GRPCUnaryProtoCall *)getAgentWithMessage:(DFGetAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark SearchAgents(SearchAgentsRequest) returns (SearchAgentsResponse)

/**
 * Returns the list of agents.
 * 
 * Since there is at most one conversational agent per project, this method is
 * useful primarily for listing all agents across projects the caller has
 * access to. One can achieve that with a wildcard project collection id "-".
 * Refer to [List
 * Sub-Collections](https://cloud.google.com/apis/design/design_patterns#list_sub-collections).
 */
- (GRPCUnaryProtoCall *)searchAgentsWithMessage:(DFSearchAgentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark TrainAgent(TrainAgentRequest) returns (Operation)

/**
 * Trains the specified agent.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)trainAgentWithMessage:(DFTrainAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark ExportAgent(ExportAgentRequest) returns (Operation)

/**
 * Exports the specified agent to a ZIP file.
 * 
 * 
 * Operation <response: [ExportAgentResponse][google.cloud.dialogflow.v2beta1.ExportAgentResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)exportAgentWithMessage:(DFExportAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

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
 */
- (GRPCUnaryProtoCall *)importAgentWithMessage:(DFImportAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

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
 */
- (GRPCUnaryProtoCall *)restoreAgentWithMessage:(DFRestoreAgentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFAgents <NSObject>

#pragma mark GetAgent(GetAgentRequest) returns (Agent)

/**
 * Retrieves the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getAgentWithRequest:(DFGetAgentRequest *)request handler:(void(^)(DFAgent *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetAgentWithRequest:(DFGetAgentRequest *)request handler:(void(^)(DFAgent *_Nullable response, NSError *_Nullable error))handler;


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
- (void)searchAgentsWithRequest:(DFSearchAgentsRequest *)request handler:(void(^)(DFSearchAgentsResponse *_Nullable response, NSError *_Nullable error))handler;

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
- (GRPCProtoCall *)RPCToSearchAgentsWithRequest:(DFSearchAgentsRequest *)request handler:(void(^)(DFSearchAgentsResponse *_Nullable response, NSError *_Nullable error))handler;


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
- (void)trainAgentWithRequest:(DFTrainAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Trains the specified agent.
 * 
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToTrainAgentWithRequest:(DFTrainAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


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
- (void)exportAgentWithRequest:(DFExportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Exports the specified agent to a ZIP file.
 * 
 * 
 * Operation <response: [ExportAgentResponse][google.cloud.dialogflow.v2beta1.ExportAgentResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToExportAgentWithRequest:(DFExportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


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
- (void)importAgentWithRequest:(DFImportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

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
- (GRPCProtoCall *)RPCToImportAgentWithRequest:(DFImportAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


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
- (void)restoreAgentWithRequest:(DFRestoreAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

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
- (GRPCProtoCall *)RPCToRestoreAgentWithRequest:(DFRestoreAgentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFAgents : GRPCProtoService<DFAgents2, DFAgents>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

