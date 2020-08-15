#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/SessionEntityType.pbrpc.h"
#import <googleapis/SessionEntityType.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
#import <googleapis/EntityType.pbobjc.h>
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

@implementation DFSessionEntityTypes

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"SessionEntityTypes"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"SessionEntityTypes"];
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

#pragma mark ListSessionEntityTypes(ListSessionEntityTypesRequest) returns (ListSessionEntityTypesResponse)

/**
 * Returns the list of all session entity types in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listSessionEntityTypesWithRequest:(DFListSessionEntityTypesRequest *)request handler:(void(^)(DFListSessionEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListSessionEntityTypesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all session entity types in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListSessionEntityTypesWithRequest:(DFListSessionEntityTypesRequest *)request handler:(void(^)(DFListSessionEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListSessionEntityTypes"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFListSessionEntityTypesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all session entity types in the specified session.
 */
- (GRPCUnaryProtoCall *)listSessionEntityTypesWithMessage:(DFListSessionEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListSessionEntityTypes"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFListSessionEntityTypesResponse class]];
}

#pragma mark GetSessionEntityType(GetSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Retrieves the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getSessionEntityTypeWithRequest:(DFGetSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetSessionEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetSessionEntityTypeWithRequest:(DFGetSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetSessionEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFSessionEntityType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified session entity type.
 */
- (GRPCUnaryProtoCall *)getSessionEntityTypeWithMessage:(DFGetSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetSessionEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFSessionEntityType class]];
}

#pragma mark CreateSessionEntityType(CreateSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Creates a session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createSessionEntityTypeWithRequest:(DFCreateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateSessionEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates a session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateSessionEntityTypeWithRequest:(DFCreateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateSessionEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFSessionEntityType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates a session entity type.
 */
- (GRPCUnaryProtoCall *)createSessionEntityTypeWithMessage:(DFCreateSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateSessionEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFSessionEntityType class]];
}

#pragma mark UpdateSessionEntityType(UpdateSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Updates the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateSessionEntityTypeWithRequest:(DFUpdateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateSessionEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateSessionEntityTypeWithRequest:(DFUpdateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateSessionEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFSessionEntityType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates the specified session entity type.
 */
- (GRPCUnaryProtoCall *)updateSessionEntityTypeWithMessage:(DFUpdateSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateSessionEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFSessionEntityType class]];
}

#pragma mark DeleteSessionEntityType(DeleteSessionEntityTypeRequest) returns (Empty)

/**
 * Deletes the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteSessionEntityTypeWithRequest:(DFDeleteSessionEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteSessionEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteSessionEntityTypeWithRequest:(DFDeleteSessionEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteSessionEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified session entity type.
 */
- (GRPCUnaryProtoCall *)deleteSessionEntityTypeWithMessage:(DFDeleteSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteSessionEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

@end
#endif
