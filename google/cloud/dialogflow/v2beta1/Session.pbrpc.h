#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Session.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFDetectIntentRequest;
@class DFDetectIntentResponse;
@class DFStreamingDetectIntentRequest;
@class DFStreamingDetectIntentResponse;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFSessions2 <NSObject>

#pragma mark DetectIntent(DetectIntentRequest) returns (DetectIntentResponse)

/**
 * Processes a natural language query and returns structured, actionable data
 * as a result. This method is not idempotent, because it may cause contexts
 * and session entity types to be updated, which in turn might affect
 * results of future queries.
 */
- (GRPCUnaryProtoCall *)detectIntentWithMessage:(DFDetectIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark StreamingDetectIntent(stream StreamingDetectIntentRequest) returns (stream StreamingDetectIntentResponse)

/**
 * Processes a natural language query in audio format in a streaming fashion
 * and returns structured, actionable data as a result. This method is only
 * available via the gRPC API (not REST).
 */
- (GRPCStreamingProtoCall *)streamingDetectIntentWithResponseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFSessions <NSObject>

#pragma mark DetectIntent(DetectIntentRequest) returns (DetectIntentResponse)

/**
 * Processes a natural language query and returns structured, actionable data
 * as a result. This method is not idempotent, because it may cause contexts
 * and session entity types to be updated, which in turn might affect
 * results of future queries.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)detectIntentWithRequest:(DFDetectIntentRequest *)request handler:(void(^)(DFDetectIntentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Processes a natural language query and returns structured, actionable data
 * as a result. This method is not idempotent, because it may cause contexts
 * and session entity types to be updated, which in turn might affect
 * results of future queries.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDetectIntentWithRequest:(DFDetectIntentRequest *)request handler:(void(^)(DFDetectIntentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark StreamingDetectIntent(stream StreamingDetectIntentRequest) returns (stream StreamingDetectIntentResponse)

/**
 * Processes a natural language query in audio format in a streaming fashion
 * and returns structured, actionable data as a result. This method is only
 * available via the gRPC API (not REST).
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)streamingDetectIntentWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, DFStreamingDetectIntentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * Processes a natural language query in audio format in a streaming fashion
 * and returns structured, actionable data as a result. This method is only
 * available via the gRPC API (not REST).
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToStreamingDetectIntentWithRequestsWriter:(GRXWriter *)requestWriter eventHandler:(void(^)(BOOL done, DFStreamingDetectIntentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFSessions : GRPCProtoService<DFSessions2, DFSessions>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

