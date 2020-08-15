#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/EntityType.pbrpc.h"
#import <googleapis/EntityType.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

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

@implementation DFEntityTypes

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"EntityTypes"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"EntityTypes"];
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

#pragma mark ListEntityTypes(ListEntityTypesRequest) returns (ListEntityTypesResponse)

/**
 * Returns the list of all entity types in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listEntityTypesWithRequest:(DFListEntityTypesRequest *)request handler:(void(^)(DFListEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListEntityTypesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all entity types in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListEntityTypesWithRequest:(DFListEntityTypesRequest *)request handler:(void(^)(DFListEntityTypesResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListEntityTypes"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFListEntityTypesResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all entity types in the specified agent.
 */
- (GRPCUnaryProtoCall *)listEntityTypesWithMessage:(DFListEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListEntityTypes"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFListEntityTypesResponse class]];
}

#pragma mark GetEntityType(GetEntityTypeRequest) returns (EntityType)

/**
 * Retrieves the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getEntityTypeWithRequest:(DFGetEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetEntityTypeWithRequest:(DFGetEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFEntityType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified entity type.
 */
- (GRPCUnaryProtoCall *)getEntityTypeWithMessage:(DFGetEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFEntityType class]];
}

#pragma mark CreateEntityType(CreateEntityTypeRequest) returns (EntityType)

/**
 * Creates an entity type in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createEntityTypeWithRequest:(DFCreateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates an entity type in the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateEntityTypeWithRequest:(DFCreateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFEntityType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates an entity type in the specified agent.
 */
- (GRPCUnaryProtoCall *)createEntityTypeWithMessage:(DFCreateEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFEntityType class]];
}

#pragma mark UpdateEntityType(UpdateEntityTypeRequest) returns (EntityType)

/**
 * Updates the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateEntityTypeWithRequest:(DFUpdateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateEntityTypeWithRequest:(DFUpdateEntityTypeRequest *)request handler:(void(^)(DFEntityType *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFEntityType class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates the specified entity type.
 */
- (GRPCUnaryProtoCall *)updateEntityTypeWithMessage:(DFUpdateEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFEntityType class]];
}

#pragma mark DeleteEntityType(DeleteEntityTypeRequest) returns (Empty)

/**
 * Deletes the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteEntityTypeWithRequest:(DFDeleteEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteEntityTypeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified entity type.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteEntityTypeWithRequest:(DFDeleteEntityTypeRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteEntityType"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified entity type.
 */
- (GRPCUnaryProtoCall *)deleteEntityTypeWithMessage:(DFDeleteEntityTypeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteEntityType"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark BatchUpdateEntityTypes(BatchUpdateEntityTypesRequest) returns (Operation)

/**
 * Updates/Creates multiple entity types in the specified agent.
 * 
 * Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchUpdateEntityTypesWithRequest:(DFBatchUpdateEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchUpdateEntityTypesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates/Creates multiple entity types in the specified agent.
 * 
 * Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchUpdateEntityTypesWithRequest:(DFBatchUpdateEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchUpdateEntityTypes"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates/Creates multiple entity types in the specified agent.
 * 
 * Operation <response: [BatchUpdateEntityTypesResponse][google.cloud.dialogflow.v2beta1.BatchUpdateEntityTypesResponse],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchUpdateEntityTypesWithMessage:(DFBatchUpdateEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchUpdateEntityTypes"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark BatchDeleteEntityTypes(BatchDeleteEntityTypesRequest) returns (Operation)

/**
 * Deletes entity types in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchDeleteEntityTypesWithRequest:(DFBatchDeleteEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchDeleteEntityTypesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes entity types in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchDeleteEntityTypesWithRequest:(DFBatchDeleteEntityTypesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchDeleteEntityTypes"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes entity types in the specified agent.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchDeleteEntityTypesWithMessage:(DFBatchDeleteEntityTypesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchDeleteEntityTypes"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark BatchCreateEntities(BatchCreateEntitiesRequest) returns (Operation)

/**
 * Creates multiple new entities in the specified entity type (extends the
 * existing collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchCreateEntitiesWithRequest:(DFBatchCreateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchCreateEntitiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates multiple new entities in the specified entity type (extends the
 * existing collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchCreateEntitiesWithRequest:(DFBatchCreateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchCreateEntities"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates multiple new entities in the specified entity type (extends the
 * existing collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty]>
 */
- (GRPCUnaryProtoCall *)batchCreateEntitiesWithMessage:(DFBatchCreateEntitiesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchCreateEntities"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

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
- (void)batchUpdateEntitiesWithRequest:(DFBatchUpdateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchUpdateEntitiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates entities in the specified entity type (replaces the existing
 * collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchUpdateEntitiesWithRequest:(DFBatchUpdateEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchUpdateEntities"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates entities in the specified entity type (replaces the existing
 * collection of entries).
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchUpdateEntitiesWithMessage:(DFBatchUpdateEntitiesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchUpdateEntities"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark BatchDeleteEntities(BatchDeleteEntitiesRequest) returns (Operation)

/**
 * Deletes entities in the specified entity type.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)batchDeleteEntitiesWithRequest:(DFBatchDeleteEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBatchDeleteEntitiesWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes entities in the specified entity type.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToBatchDeleteEntitiesWithRequest:(DFBatchDeleteEntitiesRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BatchDeleteEntities"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes entities in the specified entity type.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [google.protobuf.Struct][google.protobuf.Struct]>
 */
- (GRPCUnaryProtoCall *)batchDeleteEntitiesWithMessage:(DFBatchDeleteEntitiesRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BatchDeleteEntities"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

@end
#endif
