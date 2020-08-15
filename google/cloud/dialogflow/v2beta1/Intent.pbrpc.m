#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Intent.pbrpc.h"
#import <googleapis/Intent.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
#import <googleapis/Context.pbobjc.h>
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

@implementation DFIntents

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Intents"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Intents"];
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

#pragma mark ListIntents(ListIntentsRequest) returns (ListIntentsResponse)

/**
 * Returns the list of all intents in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listIntentsWithRequest:(DFListIntentsRequest *)request handler:(void(^)(DFListIntentsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListIntentsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all intents in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListIntentsWithRequest:(DFListIntentsRequest *)request handler:(void(^)(DFListIntentsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListIntents"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFListIntentsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all intents in the specified agent.
 */
- (GRPCUnaryProtoCall *)listIntentsWithMessage:(DFListIntentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListIntents"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFListIntentsResponse class]];
}

#pragma mark GetIntent(GetIntentRequest) returns (Intent)

/**
 * Retrieves the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getIntentWithRequest:(DFGetIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetIntentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetIntentWithRequest:(DFGetIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetIntent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFIntent class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified intent.
 */
- (GRPCUnaryProtoCall *)getIntentWithMessage:(DFGetIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetIntent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFIntent class]];
}

#pragma mark CreateIntent(CreateIntentRequest) returns (Intent)

/**
 * Creates an intent in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createIntentWithRequest:(DFCreateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateIntentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates an intent in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateIntentWithRequest:(DFCreateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateIntent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFIntent class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates an intent in the specified agent.
 */
- (GRPCUnaryProtoCall *)createIntentWithMessage:(DFCreateIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateIntent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFIntent class]];
}

#pragma mark UpdateIntent(UpdateIntentRequest) returns (Intent)

/**
 * Updates the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateIntentWithRequest:(DFUpdateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateIntentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateIntentWithRequest:(DFUpdateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateIntent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFIntent class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates the specified intent.
 */
- (GRPCUnaryProtoCall *)updateIntentWithMessage:(DFUpdateIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateIntent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFIntent class]];
}

#pragma mark DeleteIntent(DeleteIntentRequest) returns (Empty)

/**
 * Deletes the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteIntentWithRequest:(DFDeleteIntentRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteIntentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteIntentWithRequest:(DFDeleteIntentRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteIntent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified intent.
 */
- (GRPCUnaryProtoCall *)deleteIntentWithMessage:(DFDeleteIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteIntent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark BatchUpdateIntents(BatchUpdateIntentsRequest) returns (Operation)

/**
 * Updates/Creates multiple intents in the specified agent.
 * 
 * Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2beta1.BatchUpdateIntentsResponse]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchUpdateIntentsWithRequest:(DFBatchUpdateIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchUpdateIntentsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates/Creates multiple intents in the specified agent.
 * 
 * Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2beta1.BatchUpdateIntentsResponse]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchUpdateIntentsWithRequest:(DFBatchUpdateIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchUpdateIntents"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates/Creates multiple intents in the specified agent.
 * 
 * Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2beta1.BatchUpdateIntentsResponse]>
 */
- (GRPCUnaryProtoCall *)batchUpdateIntentsWithMessage:(DFBatchUpdateIntentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchUpdateIntents"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark BatchDeleteIntents(BatchDeleteIntentsRequest) returns (Operation)

/**
 * Deletes intents in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchDeleteIntentsWithRequest:(DFBatchDeleteIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchDeleteIntentsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes intents in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchDeleteIntentsWithRequest:(DFBatchDeleteIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchDeleteIntents"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes intents in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 */
- (GRPCUnaryProtoCall *)batchDeleteIntentsWithMessage:(DFBatchDeleteIntentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchDeleteIntents"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

@end
#endif
