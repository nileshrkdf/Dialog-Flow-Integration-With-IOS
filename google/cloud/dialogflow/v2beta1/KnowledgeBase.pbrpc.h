#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/KnowledgeBase.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFCreateKnowledgeBaseRequest;
@class DFDeleteKnowledgeBaseRequest;
@class DFGetKnowledgeBaseRequest;
@class DFKnowledgeBase;
@class DFListKnowledgeBasesRequest;
@class DFListKnowledgeBasesResponse;
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFKnowledgeBases2 <NSObject>

#pragma mark ListKnowledgeBases(ListKnowledgeBasesRequest) returns (ListKnowledgeBasesResponse)

/**
 * Returns the list of all knowledge bases of the specified agent.
 */
- (GRPCUnaryProtoCall *)listKnowledgeBasesWithMessage:(DFListKnowledgeBasesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetKnowledgeBase(GetKnowledgeBaseRequest) returns (KnowledgeBase)

/**
 * Retrieves the specified knowledge base.
 */
- (GRPCUnaryProtoCall *)getKnowledgeBaseWithMessage:(DFGetKnowledgeBaseRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateKnowledgeBase(CreateKnowledgeBaseRequest) returns (KnowledgeBase)

/**
 * Creates a knowledge base.
 */
- (GRPCUnaryProtoCall *)createKnowledgeBaseWithMessage:(DFCreateKnowledgeBaseRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteKnowledgeBase(DeleteKnowledgeBaseRequest) returns (Empty)

/**
 * Deletes the specified knowledge base.
 */
- (GRPCUnaryProtoCall *)deleteKnowledgeBaseWithMessage:(DFDeleteKnowledgeBaseRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFKnowledgeBases <NSObject>

#pragma mark ListKnowledgeBases(ListKnowledgeBasesRequest) returns (ListKnowledgeBasesResponse)

/**
 * Returns the list of all knowledge bases of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listKnowledgeBasesWithRequest:(DFListKnowledgeBasesRequest *)request handler:(void(^)(DFListKnowledgeBasesResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all knowledge bases of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListKnowledgeBasesWithRequest:(DFListKnowledgeBasesRequest *)request handler:(void(^)(DFListKnowledgeBasesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetKnowledgeBase(GetKnowledgeBaseRequest) returns (KnowledgeBase)

/**
 * Retrieves the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getKnowledgeBaseWithRequest:(DFGetKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetKnowledgeBaseWithRequest:(DFGetKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateKnowledgeBase(CreateKnowledgeBaseRequest) returns (KnowledgeBase)

/**
 * Creates a knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createKnowledgeBaseWithRequest:(DFCreateKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates a knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateKnowledgeBaseWithRequest:(DFCreateKnowledgeBaseRequest *)request handler:(void(^)(DFKnowledgeBase *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteKnowledgeBase(DeleteKnowledgeBaseRequest) returns (Empty)

/**
 * Deletes the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteKnowledgeBaseWithRequest:(DFDeleteKnowledgeBaseRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteKnowledgeBaseWithRequest:(DFDeleteKnowledgeBaseRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFKnowledgeBases : GRPCProtoService<DFKnowledgeBases2, DFKnowledgeBases>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

