#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/longrunning/Operations.pbrpc.h"
#import <googleapis/Operations.pbobjc.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import <googleapis/Annotations.pbobjc.h>
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Any.pbobjc.h>
#else
#import "google/protobuf/Any.pbobjc.h"
#endif
#if defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS) && GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
#import <protobuf/Empty.pbobjc.h>
#else
#import "google/protobuf/Empty.pbobjc.h"
#endif
#import <googleapis/Status.pbobjc.h>

@implementation Operations

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.longrunning"
                 serviceName:@"Operations"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.longrunning"
                 serviceName:@"Operations"];
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

#pragma mark GetOperation(GetOperationRequest) returns (Operation)

/**
 * Gets the latest state of a long-running operation.  Clients may use this
 * method to poll the operation result at intervals as recommended by the API
 * service.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getOperationWithRequest:(GetOperationRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetOperationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Gets the latest state of a long-running operation.  Clients may use this
 * method to poll the operation result at intervals as recommended by the API
 * service.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetOperationWithRequest:(GetOperationRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetOperation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Gets the latest state of a long-running operation.  Clients may use this
 * method to poll the operation result at intervals as recommended by the API
 * service.
 */
- (GRPCUnaryProtoCall *)getOperationWithMessage:(GetOperationRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetOperation"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark ListOperations(ListOperationsRequest) returns (ListOperationsResponse)

/**
 * Lists operations that match the specified filter in the request. If the
 * server doesn't support this method, it returns
 * `google.rpc.Code.UNIMPLEMENTED`.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listOperationsWithRequest:(ListOperationsRequest *)request handler:(void(^)(ListOperationsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListOperationsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Lists operations that match the specified filter in the request. If the
 * server doesn't support this method, it returns
 * `google.rpc.Code.UNIMPLEMENTED`.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListOperationsWithRequest:(ListOperationsRequest *)request handler:(void(^)(ListOperationsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListOperations"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ListOperationsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Lists operations that match the specified filter in the request. If the
 * server doesn't support this method, it returns
 * `google.rpc.Code.UNIMPLEMENTED`.
 */
- (GRPCUnaryProtoCall *)listOperationsWithMessage:(ListOperationsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListOperations"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[ListOperationsResponse class]];
}

#pragma mark CancelOperation(CancelOperationRequest) returns (Empty)

/**
 * Starts asynchronous cancellation on a long-running operation.  The server
 * makes a best effort to cancel the operation, but success is not
 * guaranteed.  If the server doesn't support this method, it returns
 * `google.rpc.Code.UNIMPLEMENTED`.  Clients may use
 * [Operations.GetOperation] or other methods to check whether the
 * cancellation succeeded or the operation completed despite cancellation.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)cancelOperationWithRequest:(CancelOperationRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCancelOperationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Starts asynchronous cancellation on a long-running operation.  The server
 * makes a best effort to cancel the operation, but success is not
 * guaranteed.  If the server doesn't support this method, it returns
 * `google.rpc.Code.UNIMPLEMENTED`.  Clients may use
 * [Operations.GetOperation] or other methods to check whether the
 * cancellation succeeded or the operation completed despite cancellation.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCancelOperationWithRequest:(CancelOperationRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CancelOperation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Starts asynchronous cancellation on a long-running operation.  The server
 * makes a best effort to cancel the operation, but success is not
 * guaranteed.  If the server doesn't support this method, it returns
 * `google.rpc.Code.UNIMPLEMENTED`.  Clients may use
 * [Operations.GetOperation] or other methods to check whether the
 * cancellation succeeded or the operation completed despite cancellation.
 */
- (GRPCUnaryProtoCall *)cancelOperationWithMessage:(CancelOperationRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CancelOperation"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

#pragma mark DeleteOperation(DeleteOperationRequest) returns (Empty)

/**
 * Deletes a long-running operation.  It indicates the client is no longer
 * interested in the operation result. It does not cancel the operation.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteOperationWithRequest:(DeleteOperationRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteOperationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes a long-running operation.  It indicates the client is no longer
 * interested in the operation result. It does not cancel the operation.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteOperationWithRequest:(DeleteOperationRequest *)request handler:(void(^)(GPBEmpty *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteOperation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GPBEmpty class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes a long-running operation.  It indicates the client is no longer
 * interested in the operation result. It does not cancel the operation.
 */
- (GRPCUnaryProtoCall *)deleteOperationWithMessage:(DeleteOperationRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteOperation"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GPBEmpty class]];
}

@end
#endif
