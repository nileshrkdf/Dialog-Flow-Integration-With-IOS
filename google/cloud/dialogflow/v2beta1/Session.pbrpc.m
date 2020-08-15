#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Session.pbrpc.h"
#import <googleapis/Session.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
#import <googleapis/AudioConfig.pbobjc.h>
#import <googleapis/Context.pbobjc.h>
#import <googleapis/Intent.pbobjc.h>
#import <googleapis/SessionEntityType.pbobjc.h>
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Struct.pbobjc.h>
#else
#import "google/protobuf/Struct.pbobjc.h"
#endif
#import <googleapis/Status.pbobjc.h>
#import <googleapis/Latlng.pbobjc.h>

@implementation DFSessions

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Sessions"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Sessions"];
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

#pragma mark DetectIntent(DetectIntentRequest) returns (DetectIntentResponse)

/**
 * Processes a natural language query and returns structured, actionable data
 * as a result. This method is not idempotent, because it may cause contexts
 * and session entity types to be updated, which in turn might affect
 * results of future queries.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)detectIntentWithRequest:(DFDetectIntentRequest *)request handler:(void(^)(DFDetectIntentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDetectIntentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Processes a natural language query and returns structured, actionable data
 * as a result. This method is not idempotent, because it may cause contexts
 * and session entity types to be updated, which in turn might affect
 * results of future queries.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDetectIntentWithRequest:(DFDetectIntentRequest *)request handler:(void(^)(DFDetectIntentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DetectIntent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFDetectIntentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Processes a natural language query and returns structured, actionable data
 * as a result. This method is not idempotent, because it may cause contexts
 * and session entity types to be updated, which in turn might affect
 * results of future queries.
 */
- (GRPCUnaryProtoCall *)detectIntentWithMessage:(DFDetectIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DetectIntent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFDetectIntentResponse class]];
}

#pragma mark StreamingDetectIntent(stream StreamingDetectIntentRequest) returns (stream StreamingDetectIntentResponse)

/**
 * Processes a natural language query in audio format in a streaming fashion
 * and returns structured, actionable data as a result. This method is only
 * available via the gRPC API (not REST).
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)streamingDetectIntentWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, DFStreamingDetectIntentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToStreamingDetectIntentWithRequestsWriter:requestWriter eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Processes a natural language query in audio format in a streaming fashion
 * and returns structured, actionable data as a result. This method is only
 * available via the gRPC API (not REST).
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToStreamingDetectIntentWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, DFStreamingDetectIntentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"StreamingDetectIntent"
            requestsWriter:requestWriter
             responseClass:[DFStreamingDetectIntentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
/**
 * Processes a natural language query in audio format in a streaming fashion
 * and returns structured, actionable data as a result. This method is only
 * available via the gRPC API (not REST).
 */
- (GRPCStreamingProtoCall *)streamingDetectIntentWithResponseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"StreamingDetectIntent"
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFStreamingDetectIntentResponse class]];
}

@end
#endif
