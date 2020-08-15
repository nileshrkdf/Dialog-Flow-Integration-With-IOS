#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Runtime.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class CreateRuntimeRequest;
@class DeleteRuntimeRequest;
@class GPBEmpty;
@class GetRuntimeHistoryRequest;
@class GetRuntimeRequest;
@class ListRuntimesRequest;
@class ListRuntimesResponse;
@class Operation;
@class Runtime;
@class RuntimeHistory;
@class UpdateRuntimeRequest;

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
  #import <protobuf/Timestamp.pbobjc.h>
#else
  #import "google/protobuf/Timestamp.pbobjc.h"
#endif
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol Runtimes2 <NSObject>

#pragma mark ListRuntimes(ListRuntimesRequest) returns (ListRuntimesResponse)

/**
 * Returns the list of all runtimes of the specified agent.
 */
- (GRPCUnaryProtoCall *)listRuntimesWithMessage:(ListRuntimesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetRuntime(GetRuntimeRequest) returns (Runtime)

/**
 * Retrieves the specified agent runtime.
 */
- (GRPCUnaryProtoCall *)getRuntimeWithMessage:(GetRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateRuntime(CreateRuntimeRequest) returns (Runtime)

/**
 * Creates an agent runtime.
 */
- (GRPCUnaryProtoCall *)createRuntimeWithMessage:(CreateRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateRuntime(UpdateRuntimeRequest) returns (Operation)

/**
 * Updates the specified agent runtime.
 * 
 * This method allows you to deploy new agent versions into the runtime.
 * When a runtime is pointed to a new agent version by setting
 * `runtime.agent_version`, the runtime is temporarily set to the `LOADING`
 * state. During that time, the runtime keeps on serving the previous version
 * of the agent. After the new agent version is done loading, the runtime is
 * set back to the `RUNNING` state.
 * 
 * Operation<response: Runtime>
 */
- (GRPCUnaryProtoCall *)updateRuntimeWithMessage:(UpdateRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteRuntime(DeleteRuntimeRequest) returns (Empty)

/**
 * Deletes the specified agent runtime.
 */
- (GRPCUnaryProtoCall *)deleteRuntimeWithMessage:(DeleteRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetRuntimeHistory(GetRuntimeHistoryRequest) returns (RuntimeHistory)

/**
 * Gets the history of the specified runtime.
 */
- (GRPCUnaryProtoCall *)getRuntimeHistoryWithMessage:(GetRuntimeHistoryRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol Runtimes <NSObject>

#pragma mark ListRuntimes(ListRuntimesRequest) returns (ListRuntimesResponse)

/**
 * Returns the list of all runtimes of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listRuntimesWithRequest:(ListRuntimesRequest *)request handler:(void(^)(ListRuntimesResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all runtimes of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListRuntimesWithRequest:(ListRuntimesRequest *)request handler:(void(^)(ListRuntimesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetRuntime(GetRuntimeRequest) returns (Runtime)

/**
 * Retrieves the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getRuntimeWithRequest:(GetRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetRuntimeWithRequest:(GetRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateRuntime(CreateRuntimeRequest) returns (Runtime)

/**
 * Creates an agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createRuntimeWithRequest:(CreateRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates an agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateRuntimeWithRequest:(CreateRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateRuntime(UpdateRuntimeRequest) returns (Operation)

/**
 * Updates the specified agent runtime.
 * 
 * This method allows you to deploy new agent versions into the runtime.
 * When a runtime is pointed to a new agent version by setting
 * `runtime.agent_version`, the runtime is temporarily set to the `LOADING`
 * state. During that time, the runtime keeps on serving the previous version
 * of the agent. After the new agent version is done loading, the runtime is
 * set back to the `RUNNING` state.
 * 
 * Operation<response: Runtime>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateRuntimeWithRequest:(UpdateRuntimeRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the specified agent runtime.
 * 
 * This method allows you to deploy new agent versions into the runtime.
 * When a runtime is pointed to a new agent version by setting
 * `runtime.agent_version`, the runtime is temporarily set to the `LOADING`
 * state. During that time, the runtime keeps on serving the previous version
 * of the agent. After the new agent version is done loading, the runtime is
 * set back to the `RUNNING` state.
 * 
 * Operation<response: Runtime>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateRuntimeWithRequest:(UpdateRuntimeRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteRuntime(DeleteRuntimeRequest) returns (Empty)

/**
 * Deletes the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteRuntimeWithRequest:(DeleteRuntimeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteRuntimeWithRequest:(DeleteRuntimeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetRuntimeHistory(GetRuntimeHistoryRequest) returns (RuntimeHistory)

/**
 * Gets the history of the specified runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getRuntimeHistoryWithRequest:(GetRuntimeHistoryRequest *)request handler:(void(^)(RuntimeHistory *_Nullable response, NSError *_Nullable error))handler;

/**
 * Gets the history of the specified runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetRuntimeHistoryWithRequest:(GetRuntimeHistoryRequest *)request handler:(void(^)(RuntimeHistory *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Runtimes : GRPCProtoService<Runtimes2, Runtimes>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

