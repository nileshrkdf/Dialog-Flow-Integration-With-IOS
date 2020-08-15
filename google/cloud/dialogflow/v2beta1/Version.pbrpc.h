#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Version.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class CreateVersionRequest;
@class DeleteVersionRequest;
@class GPBEmpty;
@class GetVersionRequest;
@class ListVersionsRequest;
@class ListVersionsResponse;
@class UpdateVersionRequest;
@class Version;

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
  #import <protobuf/Timestamp.pbobjc.h>
#else
  #import "google/protobuf/Timestamp.pbobjc.h"
#endif
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol Versions2 <NSObject>

#pragma mark ListVersions(ListVersionsRequest) returns (ListVersionsResponse)

/**
 * Returns the list of all versions of the specified agent.
 */
- (GRPCUnaryProtoCall *)listVersionsWithMessage:(ListVersionsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetVersion(GetVersionRequest) returns (Version)

/**
 * Retrieves the specified agent version.
 */
- (GRPCUnaryProtoCall *)getVersionWithMessage:(GetVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateVersion(CreateVersionRequest) returns (Version)

/**
 * Creates an agent version.
 * 
 * The new version points to the agent instance in the "default" runtime.
 */
- (GRPCUnaryProtoCall *)createVersionWithMessage:(CreateVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateVersion(UpdateVersionRequest) returns (Version)

/**
 * Updates the specified agent version.
 * 
 * Note that this method does not allow you to update the state of the agent
 * the given version points to. It allows you to update only mutable
 * properties of the version resource.
 */
- (GRPCUnaryProtoCall *)updateVersionWithMessage:(UpdateVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteVersion(DeleteVersionRequest) returns (Empty)

/**
 * Deletes the specified agent version.
 */
- (GRPCUnaryProtoCall *)deleteVersionWithMessage:(DeleteVersionRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol Versions <NSObject>

#pragma mark ListVersions(ListVersionsRequest) returns (ListVersionsResponse)

/**
 * Returns the list of all versions of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listVersionsWithRequest:(ListVersionsRequest *)request handler:(void(^)(ListVersionsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all versions of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListVersionsWithRequest:(ListVersionsRequest *)request handler:(void(^)(ListVersionsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetVersion(GetVersionRequest) returns (Version)

/**
 * Retrieves the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getVersionWithRequest:(GetVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetVersionWithRequest:(GetVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateVersion(CreateVersionRequest) returns (Version)

/**
 * Creates an agent version.
 * 
 * The new version points to the agent instance in the "default" runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createVersionWithRequest:(CreateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates an agent version.
 * 
 * The new version points to the agent instance in the "default" runtime.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateVersionWithRequest:(CreateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler;


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
- (void)updateVersionWithRequest:(UpdateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the specified agent version.
 * 
 * Note that this method does not allow you to update the state of the agent
 * the given version points to. It allows you to update only mutable
 * properties of the version resource.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateVersionWithRequest:(UpdateVersionRequest *)request handler:(void(^)(Version *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteVersion(DeleteVersionRequest) returns (Empty)

/**
 * Deletes the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteVersionWithRequest:(DeleteVersionRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified agent version.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteVersionWithRequest:(DeleteVersionRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Versions : GRPCProtoService<Versions2, Versions>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

