// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/longrunning/operations.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class GPBAny;
@class Operation;
@class Status;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - OperationsRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface OperationsRoot : GPBRootObject
@end

#pragma mark - Operation

typedef GPB_ENUM(Operation_FieldNumber) {
  Operation_FieldNumber_Name = 1,
  Operation_FieldNumber_Metadata = 2,
  Operation_FieldNumber_Done = 3,
  Operation_FieldNumber_Error = 4,
  Operation_FieldNumber_Response = 5,
};

typedef GPB_ENUM(Operation_Result_OneOfCase) {
  Operation_Result_OneOfCase_GPBUnsetOneOfCase = 0,
  Operation_Result_OneOfCase_Error = 4,
  Operation_Result_OneOfCase_Response = 5,
};

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 **/
@interface Operation : GPBMessage

/**
 * The name of the operation resource, which is only unique within the same
 * service that originally returns it.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * Some service-specific metadata associated with the operation.  It typically
 * contains progress information and common metadata such as create time.
 * Some services may not provide such metadata.  Any method that returns a
 * long-running operation should document the metadata type, if any.
 **/
@property(nonatomic, readwrite, strong, null_resettable) GPBAny *metadata;
/** Test to see if @c metadata has been set. */
@property(nonatomic, readwrite) BOOL hasMetadata;

/**
 * If the value is false, it means the operation is still in progress.
 * If true, the operation is completed and the `result` is available.
 **/
@property(nonatomic, readwrite) BOOL done;

@property(nonatomic, readonly) Operation_Result_OneOfCase resultOneOfCase;

/** The error result of the operation in case of failure. */
@property(nonatomic, readwrite, strong, null_resettable) Status *error;

/**
 * The normal response of the operation in case of success.  If the original
 * method returns no data on success, such as `Delete`, the response will be
 * `google.protobuf.Empty`.  If the original method is standard
 * `Get`/`Create`/`Update`, the response should be the resource.  For other
 * methods, the response should have the type `XxxResponse`, where `Xxx`
 * is the original method name.  For example, if the original method name
 * is `TakeSnapshot()`, the inferred response type will be
 * `TakeSnapshotResponse`.
 **/
@property(nonatomic, readwrite, strong, null_resettable) GPBAny *response;

@end

/**
 * Clears whatever value was set for the oneof 'result'.
 **/
void Operation_ClearResultOneOfCase(Operation *message);

#pragma mark - GetOperationRequest

typedef GPB_ENUM(GetOperationRequest_FieldNumber) {
  GetOperationRequest_FieldNumber_Name = 1,
};

/**
 * The request message for [Operations.GetOperation][google.longrunning.Operations.GetOperation].
 **/
@interface GetOperationRequest : GPBMessage

/** The name of the operation resource. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

#pragma mark - ListOperationsRequest

typedef GPB_ENUM(ListOperationsRequest_FieldNumber) {
  ListOperationsRequest_FieldNumber_Filter = 1,
  ListOperationsRequest_FieldNumber_PageSize = 2,
  ListOperationsRequest_FieldNumber_PageToken = 3,
  ListOperationsRequest_FieldNumber_Name = 4,
};

/**
 * The request message for [Operations.ListOperations][google.longrunning.Operations.ListOperations].
 **/
@interface ListOperationsRequest : GPBMessage

/** The name of the operation collection. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/** The standard List filter. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *filter;

/** The standard List page size. */
@property(nonatomic, readwrite) int32_t pageSize;

/** The standard List page token. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pageToken;

@end

#pragma mark - ListOperationsResponse

typedef GPB_ENUM(ListOperationsResponse_FieldNumber) {
  ListOperationsResponse_FieldNumber_OperationsArray = 1,
  ListOperationsResponse_FieldNumber_NextPageToken = 2,
};

/**
 * The response message for [Operations.ListOperations][google.longrunning.Operations.ListOperations].
 **/
@interface ListOperationsResponse : GPBMessage

/** A list of operations that match the specified filter in the request. */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Operation*> *operationsArray;
/** The number of items in @c operationsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger operationsArray_Count;

/** The standard List next-page token. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *nextPageToken;

@end

#pragma mark - CancelOperationRequest

typedef GPB_ENUM(CancelOperationRequest_FieldNumber) {
  CancelOperationRequest_FieldNumber_Name = 1,
};

/**
 * The request message for [Operations.CancelOperation][google.longrunning.Operations.CancelOperation].
 **/
@interface CancelOperationRequest : GPBMessage

/** The name of the operation resource to be cancelled. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

#pragma mark - DeleteOperationRequest

typedef GPB_ENUM(DeleteOperationRequest_FieldNumber) {
  DeleteOperationRequest_FieldNumber_Name = 1,
};

/**
 * The request message for [Operations.DeleteOperation][google.longrunning.Operations.DeleteOperation].
 **/
@interface DeleteOperationRequest : GPBMessage

/** The name of the operation resource to be deleted. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
