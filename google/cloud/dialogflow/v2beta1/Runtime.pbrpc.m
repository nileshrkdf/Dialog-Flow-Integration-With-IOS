#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Runtime.pbrpc.h"
#import <googleapis/Runtime.pbobjc.h>
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
#import <protobuf/Timestamp.pbobjc.h>
#else
#import "google/protobuf/Timestamp.pbobjc.h"
#endif

@implementation Runtimes

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Runtimes"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Runtimes"];
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

#pragma mark ListRuntimes(ListRuntimesRequest) returns (ListRuntimesResponse)

/**
 * Returns the list of all runtimes of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listRuntimesWithRequest:(ListRuntimesRequest *)request handler:(void(^)(ListRuntimesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListRuntimesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all runtimes of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListRuntimesWithRequest:(ListRuntimesRequest *)request handler:(void(^)(ListRuntimesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListRuntimes"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ListRuntimesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all runtimes of the specified agent.
 */
- (GRPCUnaryProtoCall *)listRuntimesWithMessage:(ListRuntimesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListRuntimes"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ListRuntimesResponse class]];
}

#pragma mark GetRuntime(GetRuntimeRequest) returns (Runtime)

/**
 * Retrieves the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getRuntimeWithRequest:(GetRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetRuntimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetRuntimeWithRequest:(GetRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetRuntime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Runtime class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified agent runtime.
 */
- (GRPCUnaryProtoCall *)getRuntimeWithMessage:(GetRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetRuntime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Runtime class]];
}

#pragma mark CreateRuntime(CreateRuntimeRequest) returns (Runtime)

/**
 * Creates an agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createRuntimeWithRequest:(CreateRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateRuntimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates an agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateRuntimeWithRequest:(CreateRuntimeRequest *)request handler:(void(^)(Runtime *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateRuntime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Runtime class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates an agent runtime.
 */
- (GRPCUnaryProtoCall *)createRuntimeWithMessage:(CreateRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateRuntime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Runtime class]];
}

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
- (void)updateRuntimeWithRequest:(UpdateRuntimeRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateRuntimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
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
- (GRPCProtoCall *)RPCToUpdateRuntimeWithRequest:(UpdateRuntimeRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateRuntime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
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
- (GRPCUnaryProtoCall *)updateRuntimeWithMessage:(UpdateRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateRuntime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark DeleteRuntime(DeleteRuntimeRequest) returns (Empty)

/**
 * Deletes the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteRuntimeWithRequest:(DeleteRuntimeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteRuntimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified agent runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteRuntimeWithRequest:(DeleteRuntimeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteRuntime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified agent runtime.
 */
- (GRPCUnaryProtoCall *)deleteRuntimeWithMessage:(DeleteRuntimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteRuntime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark GetRuntimeHistory(GetRuntimeHistoryRequest) returns (RuntimeHistory)

/**
 * Gets the history of the specified runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getRuntimeHistoryWithRequest:(GetRuntimeHistoryRequest *)request handler:(void(^)(RuntimeHistory *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetRuntimeHistoryWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Gets the history of the specified runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetRuntimeHistoryWithRequest:(GetRuntimeHistoryRequest *)request handler:(void(^)(RuntimeHistory *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetRuntimeHistory"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[RuntimeHistory class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Gets the history of the specified runtime.
 */
- (GRPCUnaryProtoCall *)getRuntimeHistoryWithMessage:(GetRuntimeHistoryRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetRuntimeHistory"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[RuntimeHistory class]];
}

@end
#endif
