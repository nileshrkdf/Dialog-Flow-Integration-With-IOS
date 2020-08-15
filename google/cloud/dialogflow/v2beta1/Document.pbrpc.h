#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import <googleapis/Document.pbobjc.h>
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPCLegacy.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class DFCreateDocumentRequest;
@class DFDeleteDocumentRequest;
@class DFDocument;
@class DFGetDocumentRequest;
@class DFListDocumentsRequest;
@class DFListDocumentsResponse;
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
#endif

@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;
@class GRPCProtoCall;


NS_ASSUME_NONNULL_BEGIN

@protocol DFDocuments2 <NSObject>

#pragma mark ListDocuments(ListDocumentsRequest) returns (ListDocumentsResponse)

/**
 * Returns the list of all documents of the knowledge base.
 */
- (GRPCUnaryProtoCall *)listDocumentsWithMessage:(DFListDocumentsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetDocument(GetDocumentRequest) returns (Document)

/**
 * Retrieves the specified document.
 */
- (GRPCUnaryProtoCall *)getDocumentWithMessage:(DFGetDocumentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark CreateDocument(CreateDocumentRequest) returns (Operation)

/**
 * Creates a new document.
 * 
 * Operation <response: [Document][google.cloud.dialogflow.v2beta1.Document],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 */
- (GRPCUnaryProtoCall *)createDocumentWithMessage:(DFCreateDocumentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark DeleteDocument(DeleteDocumentRequest) returns (Operation)

/**
 * Deletes the specified document.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 */
- (GRPCUnaryProtoCall *)deleteDocumentWithMessage:(DFDeleteDocumentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol DFDocuments <NSObject>

#pragma mark ListDocuments(ListDocumentsRequest) returns (ListDocumentsResponse)

/**
 * Returns the list of all documents of the knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)listDocumentsWithRequest:(DFListDocumentsRequest *)request handler:(void(^)(DFListDocumentsResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Returns the list of all documents of the knowledge base.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToListDocumentsWithRequest:(DFListDocumentsRequest *)request handler:(void(^)(DFListDocumentsResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetDocument(GetDocumentRequest) returns (Document)

/**
 * Retrieves the specified document.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)getDocumentWithRequest:(DFGetDocumentRequest *)request handler:(void(^)(DFDocument *_Nullable response, NSError *_Nullable error))handler;

/**
 * Retrieves the specified document.
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToGetDocumentWithRequest:(DFGetDocumentRequest *)request handler:(void(^)(DFDocument *_Nullable response, NSError *_Nullable error))handler;


#pragma mark CreateDocument(CreateDocumentRequest) returns (Operation)

/**
 * Creates a new document.
 * 
 * Operation <response: [Document][google.cloud.dialogflow.v2beta1.Document],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)createDocumentWithRequest:(DFCreateDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Creates a new document.
 * 
 * Operation <response: [Document][google.cloud.dialogflow.v2beta1.Document],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToCreateDocumentWithRequest:(DFCreateDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


#pragma mark DeleteDocument(DeleteDocumentRequest) returns (Operation)

/**
 * Deletes the specified document.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (void)deleteDocumentWithRequest:(DFDeleteDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;

/**
 * Deletes the specified document.
 * 
 * Operation <response: [google.protobuf.Empty][google.protobuf.Empty],
 * metadata: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2beta1.KnowledgeOperationMetadata]>
 *
 * This method belongs to a set of APIs that have been deprecated. Using the v2 API is recommended.
 */
- (GRPCProtoCall *)RPCToDeleteDocumentWithRequest:(DFDeleteDocumentRequest *)request handler:(void(^)(Operation *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DFDocuments : GRPCProtoService<DFDocuments2, DFDocuments>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

