#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "google/cloud/dialogflow/v2beta1/Document.pbrpc.h"
#import <googleapis/Document.pbobjc.h>
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

@implementation DFDocuments

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Documents"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"google.cloud.dialogflow.v2beta1"
                 serviceName:@"Documents"];
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

#pragma mark ListDocuments(ListDocumentsRequest) returns (ListDocumentsResponse)

/**
 * Returns the list of all documents of the knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listDocumentsWithRequest:(DFListDocumentsRequest *)request handler:(void(^)(DFListDocumentsResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToListDocumentsWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Returns the list of all documents of the knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListDocumentsWithRequest:(DFListDocumentsRequest *)request handler:(void(^)(DFListDocumentsResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"ListDocuments"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFListDocumentsResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Returns the list of all documents of the knowledge base.
 */
- (GRPCUnaryProtoCall *)listDocumentsWithMessage:(DFListDocumentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"ListDocuments"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFListDocumentsResponse class]];
}

#pragma mark GetDocument(GetDocumentRequest) returns (Document)

/**
 * Retrieves the specified document.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getDocumentWithRequest:(DFGetDocumentRequest *)request handler:(void(^)(DFDocument *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetDocumentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Retrieves the specified document.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetDocumentWithRequest:(DFGetDocumentRequest *)request handler:(void(^)(DFDocument *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetDocument"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DFDocument class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Retrieves the specified document.
 */
- (GRPCUnaryProtoCall *)getDocumentWithMessage:(DFGetDocumentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetDocument"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[DFDocument class]];
}

#pragma mark CreateDocument(CreateDocumentRequest) returns (Operation)

/**
 * Creates a new document.
 * 
 * Operation <response: [Document][google.cloud.dialogflow.v2beta1.Document],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createDocumentWithRequest:(DFCreateDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateDocumentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Creates a new document.
 * 
 * Operation <response: [Document][google.cloud.dialogflow.v2beta1.Document],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateDocumentWithRequest:(DFCreateDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"CreateDocument"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Creates a new document.
 * 
 * Operation <response: [Document][google.cloud.dialogflow.v2beta1.Document],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 */
- (GRPCUnaryProtoCall *)createDocumentWithMessage:(DFCreateDocumentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"CreateDocument"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

#pragma mark DeleteDocument(DeleteDocumentRequest) returns (Operation)

/**
 * Deletes the specified document.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteDocumentWithRequest:(DFDeleteDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteDocumentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Deletes the specified document.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteDocumentWithRequest:(DFDeleteDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"DeleteDocument"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[Operation class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
/**
 * Deletes the specified document.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 */
- (GRPCUnaryProtoCall *)deleteDocumentWithMessage:(DFDeleteDocumentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"DeleteDocument"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[Operation class]];
}

@end
#endif
