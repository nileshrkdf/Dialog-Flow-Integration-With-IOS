#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Tier.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class AgentTier;
@class GetAgentTierRequest;
@class UpdateAgentTierRequest;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  #import <googleapis/Annotations.pbobjc.h>
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

@protocol Tiers2 <NSObject>

#pragma mark GetAgentTier(GetAgentTierRequest) returns (AgentTier)

/**
 * Retrieves the tier of the specified agent.
 */
- (GRPCUnaryProtoCall *)getAgentTierWithMessage:(GetAgentTierRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark UpdateAgentTier(UpdateAgentTierRequest) returns (AgentTier)

/**
 * Updates the tier of the specified agent.
 */
- (GRPCUnaryProtoCall *)updateAgentTierWithMessage:(UpdateAgentTierRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol Tiers <NSObject>

#pragma mark GetAgentTier(GetAgentTierRequest) returns (AgentTier)

/**
 * Retrieves the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getAgentTierWithRequest:(GetAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetAgentTierWithRequest:(GetAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpdateAgentTier(UpdateAgentTierRequest) returns (AgentTier)

/**
 * Updates the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateAgentTierWithRequest:(UpdateAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler;

/**
 * Updates the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateAgentTierWithRequest:(UpdateAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface Tiers : GRPCProtoService<Tiers2, Tiers>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

