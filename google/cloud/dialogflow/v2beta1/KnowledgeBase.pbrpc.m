#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/KnowledgeBase.pbrpc.h"
#import <googleapis/KnowledgeBase.pbobjc.h>
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

@implementation DFKnowledgeBases

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"KnowledgeBases"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"KnowledgeBases"];
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

#pragma mark ListKnowledgeBases(ListKnowledgeBasesRequest) returns (ListKnowledgeBasesResponse)

/**
 * Returns the list of all knowledge bases of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listKnowledgeBasesWithRequest:(DFListKnowledgeBasesRequest *)request handler:(void(^)(DFListKnowledgeBasesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListKnowledgeBasesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all knowledge bases of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListKnowledgeBasesWithRequest:(DFListKnowledgeBasesRequest *)request handler:(void(^)(DFListKnowledgeBasesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListKnowledgeBases"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFListKnowledgeBasesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all knowledge bases of the specified agent.
 */
- (GRPCUnaryProtoCall *)listKnowledgeBasesWithMessage:(DFListKnowledgeBasesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListKnowledgeBases"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFListKnowledgeBasesResponse class]];
}

#pragma mark GetKnowledgeBase(GetKnowledgeBaseRequest) returns (KnowledgeBase)

/**
 * Retrieves the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getKnowledgeBaseWithRequest:(DFGetKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetKnowledgeBaseWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetKnowledgeBaseWithRequest:(DFGetKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetKnowledgeBase"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFKnowledgeBase class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified knowledge base.
 */
- (GRPCUnaryProtoCall *)getKnowledgeBaseWithMessage:(DFGetKnowledgeBaseRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetKnowledgeBase"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFKnowledgeBase class]];
}

#pragma mark CreateKnowledgeBase(CreateKnowledgeBaseRequest) returns (KnowledgeBase)

/**
 * Creates a knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createKnowledgeBaseWithRequest:(DFCreateKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateKnowledgeBaseWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates a knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateKnowledgeBaseWithRequest:(DFCreateKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateKnowledgeBase"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFKnowledgeBase class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates a knowledge base.
 */
- (GRPCUnaryProtoCall *)createKnowledgeBaseWithMessage:(DFCreateKnowledgeBaseRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateKnowledgeBase"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFKnowledgeBase class]];
}

#pragma mark DeleteKnowledgeBase(DeleteKnowledgeBaseRequest) returns (Empty)

/**
 * Deletes the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteKnowledgeBaseWithRequest:(DFDeleteKnowledgeBaseRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteKnowledgeBaseWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteKnowledgeBaseWithRequest:(DFDeleteKnowledgeBaseRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteKnowledgeBase"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified knowledge base.
 */
- (GRPCUnaryProtoCall *)deleteKnowledgeBaseWithMessage:(DFDeleteKnowledgeBaseRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteKnowledgeBase"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

@end
#endif
