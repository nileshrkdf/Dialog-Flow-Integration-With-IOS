#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Intent.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFBatchDeleteIntentsRequest;
@class DFBatchUpdateIntentsRequest;
@class DFCreateIntentRequest;
@class DFDeleteIntentRequest;
@class DFGetIntentRequest;
@class DFIntent;
@class DFListIntentsRequest;
@class DFListIntentsResponse;
@class DFUpdateIntentRequest;
@class GPBEmpty;
@class Operation;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFIntents2 <NSObject>

#pragma mark ListIntents(ListIntentsRequest) returns (ListIntentsResponse)

/**
 * Returns the list of all intents in the specified agent.
 */
- (GRPCUnaryProtoCall *)listIntentsWithMessage:(DFListIntentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetIntent(GetIntentRequest) returns (Intent)

/**
 * Retrieves the specified intent.
 */
- (GRPCUnaryProtoCall *)getIntentWithMessage:(DFGetIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateIntent(CreateIntentRequest) returns (Intent)

/**
 * Creates an intent in the specified agent.
 */
- (GRPCUnaryProtoCall *)createIntentWithMessage:(DFCreateIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateIntent(UpdateIntentRequest) returns (Intent)

/**
 * Updates the specified intent.
 */
- (GRPCUnaryProtoCall *)updateIntentWithMessage:(DFUpdateIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteIntent(DeleteIntentRequest) returns (Empty)

/**
 * Deletes the specified intent.
 */
- (GRPCUnaryProtoCall *)deleteIntentWithMessage:(DFDeleteIntentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchUpdateIntents(BatchUpdateIntentsRequest) returns (Operation)

/**
 * Updates/Creates multiple intents in the specified agent.
 * 
 * Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2beta1.BatchUpdateIntentsResponse]>
 */
- (GRPCUnaryProtoCall *)batchUpdateIntentsWithMessage:(DFBatchUpdateIntentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchDeleteIntents(BatchDeleteIntentsRequest) returns (Operation)

/**
 * Deletes intents in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 */
- (GRPCUnaryProtoCall *)batchDeleteIntentsWithMessage:(DFBatchDeleteIntentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFIntents <NSObject>

#pragma mark ListIntents(ListIntentsRequest) returns (ListIntentsResponse)

/**
 * Returns the list of all intents in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listIntentsWithRequest:(DFListIntentsRequest *)request handler:(void(^)(DFListIntentsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all intents in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListIntentsWithRequest:(DFListIntentsRequest *)request handler:(void(^)(DFListIntentsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetIntent(GetIntentRequest) returns (Intent)

/**
 * Retrieves the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getIntentWithRequest:(DFGetIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetIntentWithRequest:(DFGetIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateIntent(CreateIntentRequest) returns (Intent)

/**
 * Creates an intent in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createIntentWithRequest:(DFCreateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates an intent in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateIntentWithRequest:(DFCreateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateIntent(UpdateIntentRequest) returns (Intent)

/**
 * Updates the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateIntentWithRequest:(DFUpdateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateIntentWithRequest:(DFUpdateIntentRequest *)request handler:(void(^)(DFIntent *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteIntent(DeleteIntentRequest) returns (Empty)

/**
 * Deletes the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteIntentWithRequest:(DFDeleteIntentRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified intent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteIntentWithRequest:(DFDeleteIntentRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchUpdateIntents(BatchUpdateIntentsRequest) returns (Operation)

/**
 * Updates/Creates multiple intents in the specified agent.
 * 
 * Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2beta1.BatchUpdateIntentsResponse]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchUpdateIntentsWithRequest:(DFBatchUpdateIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates/Creates multiple intents in the specified agent.
 * 
 * Operation <response: [BatchUpdateIntentsResponse][google.cloud.dialogflow.v2beta1.BatchUpdateIntentsResponse]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchUpdateIntentsWithRequest:(DFBatchUpdateIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchDeleteIntents(BatchDeleteIntentsRequest) returns (Operation)

/**
 * Deletes intents in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchDeleteIntentsWithRequest:(DFBatchDeleteIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes intents in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchDeleteIntentsWithRequest:(DFBatchDeleteIntentsRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFIntents : GRPCProtoService<DFIntents2, DFIntents>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

