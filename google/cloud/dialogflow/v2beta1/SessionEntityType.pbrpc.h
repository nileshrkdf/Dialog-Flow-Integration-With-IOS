#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/SessionEntityType.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFCreateSessionEntityTypeRequest;
@class DFDeleteSessionEntityTypeRequest;
@class DFGetSessionEntityTypeRequest;
@class DFListSessionEntityTypesRequest;
@class DFListSessionEntityTypesResponse;
@class DFSessionEntityType;
@class DFUpdateSessionEntityTypeRequest;
@class GPBEmpty;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFSessionEntityTypes2 <NSObject>

#pragma mark ListSessionEntityTypes(ListSessionEntityTypesRequest) returns (ListSessionEntityTypesResponse)

/**
 * Returns the list of all session entity types in the specified session.
 */
- (GRPCUnaryProtoCall *)listSessionEntityTypesWithMessage:(DFListSessionEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetSessionEntityType(GetSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Retrieves the specified session entity type.
 */
- (GRPCUnaryProtoCall *)getSessionEntityTypeWithMessage:(DFGetSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateSessionEntityType(CreateSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Creates a session entity type.
 */
- (GRPCUnaryProtoCall *)createSessionEntityTypeWithMessage:(DFCreateSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateSessionEntityType(UpdateSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Updates the specified session entity type.
 */
- (GRPCUnaryProtoCall *)updateSessionEntityTypeWithMessage:(DFUpdateSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteSessionEntityType(DeleteSessionEntityTypeRequest) returns (Empty)

/**
 * Deletes the specified session entity type.
 */
- (GRPCUnaryProtoCall *)deleteSessionEntityTypeWithMessage:(DFDeleteSessionEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFSessionEntityTypes <NSObject>

#pragma mark ListSessionEntityTypes(ListSessionEntityTypesRequest) returns (ListSessionEntityTypesResponse)

/**
 * Returns the list of all session entity types in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listSessionEntityTypesWithRequest:(DFListSessionEntityTypesRequest *)request handler:(void(^)(DFListSessionEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all session entity types in the specified session.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListSessionEntityTypesWithRequest:(DFListSessionEntityTypesRequest *)request handler:(void(^)(DFListSessionEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetSessionEntityType(GetSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Retrieves the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getSessionEntityTypeWithRequest:(DFGetSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetSessionEntityTypeWithRequest:(DFGetSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateSessionEntityType(CreateSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Creates a session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createSessionEntityTypeWithRequest:(DFCreateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates a session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateSessionEntityTypeWithRequest:(DFCreateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateSessionEntityType(UpdateSessionEntityTypeRequest) returns (SessionEntityType)

/**
 * Updates the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateSessionEntityTypeWithRequest:(DFUpdateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateSessionEntityTypeWithRequest:(DFUpdateSessionEntityTypeRequest *)request handler:(void(^)(DFSessionEntityType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteSessionEntityType(DeleteSessionEntityTypeRequest) returns (Empty)

/**
 * Deletes the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteSessionEntityTypeWithRequest:(DFDeleteSessionEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified session entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteSessionEntityTypeWithRequest:(DFDeleteSessionEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFSessionEntityTypes : GRPCProtoService<DFSessionEntityTypes2, DFSessionEntityTypes>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

