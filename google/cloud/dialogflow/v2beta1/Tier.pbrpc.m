#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Tier.pbrpc.h"
#import <googleapis/Tier.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/FieldMask.pbobjc.h>
#else
#import "google/protobuf/FieldMask.pbobjc.h"
#endif

@implementation Tiers

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Tiers"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Tiers"];
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

#pragma mark GetAgentTier(GetAgentTierRequest) returns (AgentTier)

/**
 * Retrieves the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getAgentTierWithRequest:(GetAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAgentTierWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetAgentTierWithRequest:(GetAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAgentTier"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AgentTier class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the tier of the specified agent.
 */
- (GRPCUnaryProtoCall *)getAgentTierWithMessage:(GetAgentTierRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAgentTier"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[AgentTier class]];
}

#pragma mark UpdateAgentTier(UpdateAgentTierRequest) returns (AgentTier)

/**
 * Updates the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)updateAgentTierWithRequest:(UpdateAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateAgentTierWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Updates the tier of the specified agent.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToUpdateAgentTierWithRequest:(UpdateAgentTierRequest *)request handler:(void(^)(AgentTier *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateAgentTier"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AgentTier class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Updates the tier of the specified agent.
 */
- (GRPCUnaryProtoCall *)updateAgentTierWithMessage:(UpdateAgentTierRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"UpdateAgentTier"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[AgentTier class]];
}

@end
#endif
