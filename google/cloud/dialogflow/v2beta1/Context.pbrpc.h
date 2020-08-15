#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Context.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFContext;
@class DFCreateContextRequest;
@class DFDeleteAllContextsRequest;
@class DFDeleteContextRequest;
@class DFGetContextRequest;
@class DFListContextsRequest;
@class DFListContextsResponse;
@class DFUpdateContextRequest;
@class GPBEmpty;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFContexts2 <NSObject>

#pragma mark ListContexts(ListContextsRequest) returns (ListContextsResponse)

/**
 * Returns the list of all contexts in the specified session.
 */
- (GRPCUnaryProtoCall *)listContextsWithMessage:(DFListContextsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetContext(GetContextRequest) returns (Context)

/**
 * Retrieves the specified context.
 */
- (GRPCUnaryProtoCall *)getContextWithMessage:(DFGetContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateContext(CreateContextRequest) returns (Context)

/**
 * Creates a context.
 */
- (GRPCUnaryProtoCall *)createContextWithMessage:(DFCreateContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateContext(UpdateContextRequest) returns (Context)

/**
 * Updates the specified context.
 */
- (GRPCUnaryProtoCall *)updateContextWithMessage:(DFUpdateContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteContext(DeleteContextRequest) returns (Empty)

/**
 * Deletes the specified context.
 */
- (GRPCUnaryProtoCall *)deleteContextWithMessage:(DFDeleteContextRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteAllContexts(DeleteAllContextsRequest) returns (Empty)

/**
 * Deletes all active contexts in the specified session.
 */
- (GRPCUnaryProtoCall *)deleteAllContextsWithMessage:(DFDeleteAllContextsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFContexts <NSObject>

#pragma mark ListContexts(ListContextsRequest) returns (ListContextsResponse)

/**
 * Returns the list of all contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listContextsWithRequest:(DFListContextsRequest *)request handler:(void(^)(DFListContextsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListContextsWithRequest:(DFListContextsRequest *)request handler:(void(^)(DFListContextsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetContext(GetContextRequest) returns (Context)

/**
 * Retrieves the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getContextWithRequest:(DFGetContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetContextWithRequest:(DFGetContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateContext(CreateContextRequest) returns (Context)

/**
 * Creates a context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createContextWithRequest:(DFCreateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates a context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateContextWithRequest:(DFCreateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateContext(UpdateContextRequest) returns (Context)

/**
 * Updates the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateContextWithRequest:(DFUpdateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateContextWithRequest:(DFUpdateContextRequest *)request handler:(void(^)(DFContext *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteContext(DeleteContextRequest) returns (Empty)

/**
 * Deletes the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteContextWithRequest:(DFDeleteContextRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified context.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteContextWithRequest:(DFDeleteContextRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteAllContexts(DeleteAllContextsRequest) returns (Empty)

/**
 * Deletes all active contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteAllContextsWithRequest:(DFDeleteAllContextsRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes all active contexts in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteAllContextsWithRequest:(DFDeleteAllContextsRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFContexts : GRPCProtoService<DFContexts2, DFContexts>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

