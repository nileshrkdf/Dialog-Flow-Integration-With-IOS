#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/EntityType.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFBatchCreateEntitiesRequest;
@class DFBatchDeleteEntitiesRequest;
@class DFBatchDeleteEntityTypesRequest;
@class DFBatchUpdateEntitiesRequest;
@class DFBatchUpdateEntityTypesRequest;
@class DFCreateEntityTypeRequest;
@class DFDeleteEntityTypeRequest;
@class DFEntityType;
@class DFGetEntityTypeRequest;
@class DFListEntityTypesRequest;
@class DFListEntityTypesResponse;
@class DFUpdateEntityTypeRequest;
@class GPBEmpty;
@class Operation;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  #import <googleapis/Annotations.pbobjc.h>
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

@protocol DFEntityTypes2 <NSObject>

#pragma mark ListEntityTypes(ListEntityTypesRequest) returns (ListEntityTypesResponse)

/**
 * Returns the list of all entity types in the specified agent.
 */
- (GRPCUnaryProtoCall *)listEntityTypesWithMessage:(DFListEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetEntityType(GetEntityTypeRequest) returns (EntityType)

/**
 * Retrieves the specified entity type.
 */
- (GRPCUnaryProtoCall *)getEntityTypeWithMessage:(DFGetEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateEntityType(CreateEntityTypeRequest) returns (EntityType)

/**
 * Creates an entity type in the specified agent.
 */
- (GRPCUnaryProtoCall *)createEntityTypeWithMessage:(DFCreateEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateEntityType(UpdateEntityTypeRequest) returns (EntityType)

/**
 * Updates the specified entity type.
 */
- (GRPCUnaryProtoCall *)updateEntityTypeWithMessage:(DFUpdateEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteEntityType(DeleteEntityTypeRequest) returns (Empty)

/**
 * Deletes the specified entity type.
 */
- (GRPCUnaryProtoCall *)deleteEntityTypeWithMessage:(DFDeleteEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchUpdateEntityTypes(BatchUpdateEntityTypesRequest) returns (Operation)

/**
 * Updates/Creates multiple entity types in the specified agent.
 * 
 * Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchUpdateEntityTypesWithMessage:(DFBatchUpdateEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchDeleteEntityTypes(BatchDeleteEntityTypesRequest) returns (Operation)

/**
 * Deletes entity types in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchDeleteEntityTypesWithMessage:(DFBatchDeleteEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchCreateEntities(BatchCreateEntitiesRequest) returns (Operation)

/**
 * Creates multiple new entities in the specified entity type (extends the
 * existing collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 */
- (GRPCUnaryProtoCall *)batchCreateEntitiesWithMessage:(DFBatchCreateEntitiesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchUpdateEntities(BatchUpdateEntitiesRequest) returns (Operation)

/**
 * Updates entities in the specified entity type (replaces the existing
 * collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchUpdateEntitiesWithMessage:(DFBatchUpdateEntitiesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BatchDeleteEntities(BatchDeleteEntitiesRequest) returns (Operation)

/**
 * Deletes entities in the specified entity type.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchDeleteEntitiesWithMessage:(DFBatchDeleteEntitiesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFEntityTypes <NSObject>

#pragma mark ListEntityTypes(ListEntityTypesRequest) returns (ListEntityTypesResponse)

/**
 * Returns the list of all entity types in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listEntityTypesWithRequest:(DFListEntityTypesRequest *)request handler:(void(^)(DFListEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all entity types in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListEntityTypesWithRequest:(DFListEntityTypesRequest *)request handler:(void(^)(DFListEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetEntityType(GetEntityTypeRequest) returns (EntityType)

/**
 * Retrieves the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getEntityTypeWithRequest:(DFGetEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetEntityTypeWithRequest:(DFGetEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateEntityType(CreateEntityTypeRequest) returns (EntityType)

/**
 * Creates an entity type in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createEntityTypeWithRequest:(DFCreateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates an entity type in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateEntityTypeWithRequest:(DFCreateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateEntityType(UpdateEntityTypeRequest) returns (EntityType)

/**
 * Updates the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateEntityTypeWithRequest:(DFUpdateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateEntityTypeWithRequest:(DFUpdateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteEntityType(DeleteEntityTypeRequest) returns (Empty)

/**
 * Deletes the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteEntityTypeWithRequest:(DFDeleteEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteEntityTypeWithRequest:(DFDeleteEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchUpdateEntityTypes(BatchUpdateEntityTypesRequest) returns (Operation)

/**
 * Updates/Creates multiple entity types in the specified agent.
 * 
 * Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchUpdateEntityTypesWithRequest:(DFBatchUpdateEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates/Creates multiple entity types in the specified agent.
 * 
 * Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchUpdateEntityTypesWithRequest:(DFBatchUpdateEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchDeleteEntityTypes(BatchDeleteEntityTypesRequest) returns (Operation)

/**
 * Deletes entity types in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchDeleteEntityTypesWithRequest:(DFBatchDeleteEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes entity types in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchDeleteEntityTypesWithRequest:(DFBatchDeleteEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchCreateEntities(BatchCreateEntitiesRequest) returns (Operation)

/**
 * Creates multiple new entities in the specified entity type (extends the
 * existing collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchCreateEntitiesWithRequest:(DFBatchCreateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates multiple new entities in the specified entity type (extends the
 * existing collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchCreateEntitiesWithRequest:(DFBatchCreateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchUpdateEntities(BatchUpdateEntitiesRequest) returns (Operation)

/**
 * Updates entities in the specified entity type (replaces the existing
 * collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchUpdateEntitiesWithRequest:(DFBatchUpdateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates entities in the specified entity type (replaces the existing
 * collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchUpdateEntitiesWithRequest:(DFBatchUpdateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BatchDeleteEntities(BatchDeleteEntitiesRequest) returns (Operation)

/**
 * Deletes entities in the specified entity type.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchDeleteEntitiesWithRequest:(DFBatchDeleteEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes entities in the specified entity type.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchDeleteEntitiesWithRequest:(DFBatchDeleteEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFEntityTypes : GRPCProtoService<DFEntityTypes2, DFEntityTypes>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

