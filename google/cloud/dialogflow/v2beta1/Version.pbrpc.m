#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Version.pbrpc.h"
#import <googleapis/Version.pbobjc.h>
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
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Timestamp.pbobjc.h>
#else
#import "google/protobuf/Timestamp.pbobjc.h"
#endif

@implementation Versions

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Versions"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Versions"];
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

#pragma mark ListVersions(ListVersionsRequest) returns (ListVersionsResponse)

/**
 * Returns the list of all versions of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listVersionsWithRequest:(ListVersionsRequest *)request handler:(void(^)(ListVersionsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListVersionsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all versions of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListVersionsWithRequest:(ListVersionsRequest *)request handler:(void(^)(ListVersionsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListVersions"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ListVersionsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all versions of the specified agent.
 */
- (GRPCUnaryProtoCall *)listVersionsWithMessage:(ListVersionsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListVersions"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ListVersionsResponse class]];
}

#pragma mark GetVersion(GetVersionRequest) returns (Version)

/**
 * Retrieves the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getVersionWithRequest:(GetVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetVersionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetVersionWithRequest:(GetVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetVersion"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Version class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified agent version.
 */
- (GRPCUnaryProtoCall *)getVersionWithMessage:(GetVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetVersion"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Version class]];
}

#pragma mark CreateVersion(CreateVersionRequest) returns (Version)

/**
 * Creates an agent version.
 * 
 * The new version points to the agent instance in the "default" runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createVersionWithRequest:(CreateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateVersionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates an agent version.
 * 
 * The new version points to the agent instance in the "default" runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateVersionWithRequest:(CreateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateVersion"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Version class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates an agent version.
 * 
 * The new version points to the agent instance in the "default" runtime.
 */
- (GRPCUnaryProtoCall *)createVersionWithMessage:(CreateVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateVersion"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Version class]];
}

#pragma mark UpdateVersion(UpdateVersionRequest) returns (Version)

/**
 * Updates the specified agent version.
 * 
 * Note that this method does not allow you to update the state of the agent
 * the given version points to. It allows you to update only mutable
 * properties of the version resource.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateVersionWithRequest:(UpdateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateVersionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates the specified agent version.
 * 
 * Note that this method does not allow you to update the state of the agent
 * the given version points to. It allows you to update only mutable
 * properties of the version resource.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateVersionWithRequest:(UpdateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateVersion"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Version class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates the specified agent version.
 * 
 * Note that this method does not allow you to update the state of the agent
 * the given version points to. It allows you to update only mutable
 * properties of the version resource.
 */
- (GRPCUnaryProtoCall *)updateVersionWithMessage:(UpdateVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateVersion"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Version class]];
}

#pragma mark DeleteVersion(DeleteVersionRequest) returns (Empty)

/**
 * Deletes the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteVersionWithRequest:(DeleteVersionRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteVersionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteVersionWithRequest:(DeleteVersionRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteVersion"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified agent version.
 */
- (GRPCUnaryProtoCall *)deleteVersionWithMessage:(DeleteVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteVersion"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

@end
#endif
