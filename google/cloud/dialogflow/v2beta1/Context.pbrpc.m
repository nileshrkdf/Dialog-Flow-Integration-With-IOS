#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Context.pbrpc.h"
#import <googleapis/Context.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
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

@implementation DFContexts

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Contexts"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Contexts"];
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

#pragma mark ListContexts(ListContextsRequest) returns (ListContextsResponse)

/**
 * Returns the list of all contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listContextsWithRequest:(DFListContextsRequest *)request handler:(void(^)(DFListContextsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListContextsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListContextsWithRequest:(DFListContextsRequest *)request handler:(void(^)(DFListContextsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListContexts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFListContextsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all contexts in the specified session.
 */
- (GRPCUnaryProtoCall *)listContextsWithMessage:(DFListContextsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListContexts"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFListContextsResponse class]];
}

#pragma mark GetContext(GetContextRequest) returns (Context)

/**
 * Retrieves the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getContextWithRequest:(DFGetContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetContextWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetContextWithRequest:(DFGetContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetContext"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFContext class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified context.
 */
- (GRPCUnaryProtoCall *)getContextWithMessage:(DFGetContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetContext"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFContext class]];
}

#pragma mark CreateContext(CreateContextRequest) returns (Context)

/**
 * Creates a context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createContextWithRequest:(DFCreateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateContextWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates a context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateContextWithRequest:(DFCreateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateContext"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFContext class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates a context.
 */
- (GRPCUnaryProtoCall *)createContextWithMessage:(DFCreateContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateContext"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFContext class]];
}

#pragma mark UpdateContext(UpdateContextRequest) returns (Context)

/**
 * Updates the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateContextWithRequest:(DFUpdateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateContextWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateContextWithRequest:(DFUpdateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateContext"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFContext class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates the specified context.
 */
- (GRPCUnaryProtoCall *)updateContextWithMessage:(DFUpdateContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateContext"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFContext class]];
}

#pragma mark DeleteContext(DeleteContextRequest) returns (Empty)

/**
 * Deletes the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteContextWithRequest:(DFDeleteContextRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteContextWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteContextWithRequest:(DFDeleteContextRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteContext"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified context.
 */
- (GRPCUnaryProtoCall *)deleteContextWithMessage:(DFDeleteContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteContext"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark DeleteAllContexts(DeleteAllContextsRequest) returns (Empty)

/**
 * Deletes all active contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteAllContextsWithRequest:(DFDeleteAllContextsRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteAllContextsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes all active contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteAllContextsWithRequest:(DFDeleteAllContextsRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteAllContexts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes all active contexts in the specified session.
 */
- (GRPCUnaryProtoCall *)deleteAllContextsWithMessage:(DFDeleteAllContextsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteAllContexts"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

@end
#endif
