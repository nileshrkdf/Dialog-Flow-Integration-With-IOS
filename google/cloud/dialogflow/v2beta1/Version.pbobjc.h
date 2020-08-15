// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/dialogflow/v2beta1/version.proto

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

@class GPBFieldMask;
@class GPBTimestamp;
@class Version;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - VersionRoot

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
@interface VersionRoot : GPBRootObject
@end

#pragma mark - Version

typedef GPB_ENUM(Version_FieldNumber) {
  Version_FieldNumber_Name = 1,
  Version_FieldNumber_Description_p = 2,
  Version_FieldNumber_VersionNumber = 3,
  Version_FieldNumber_CreateTime = 4,
};

/**
 * Represents an agent version.
 **/
@interface Version : GPBMessage

/**
 * Required. The unique identifier of this agent version.
 * Format: `projects/<Project ID>/agent/versions/<Version ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/** Optional. The developer-provided description of this version. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

/**
 * The sequential number of this version. This field is read-only, i.e., it
 * cannot be set by create and update methods.
 **/
@property(nonatomic, readwrite) int32_t versionNumber;

/**
 * The creation time of this version. This field is read-only, i.e., it
 * cannot be set by create and update methods.
 **/
@property(nonatomic, readwrite, strong, null_resettable) GPBTimestamp *createTime;
/** Test to see if @c createTime has been set. */
@property(nonatomic, readwrite) BOOL hasCreateTime;

@end

#pragma mark - ListVersionsRequest

typedef GPB_ENUM(ListVersionsRequest_FieldNumber) {
  ListVersionsRequest_FieldNumber_Parent = 1,
  ListVersionsRequest_FieldNumber_PageSize = 2,
  ListVersionsRequest_FieldNumber_PageToken = 3,
};

/**
 * The request message for [Versions.ListVersions].
 **/
@interface ListVersionsRequest : GPBMessage

/**
 * Required. The agent to list all versions from.
 * Format: `projects/<Project ID>/agent`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

/**
 * Optional. The maximum number of items to return in a single page. By
 * default 100 and at most 1000.
 **/
@property(nonatomic, readwrite) int32_t pageSize;

/** Optional. The next_page_token value returned from a previous list request. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pageToken;

@end

#pragma mark - ListVersionsResponse

typedef GPB_ENUM(ListVersionsResponse_FieldNumber) {
  ListVersionsResponse_FieldNumber_VersionsArray = 1,
  ListVersionsResponse_FieldNumber_NextPageToken = 2,
};

/**
 * The response message for [Versions.ListVersions].
 **/
@interface ListVersionsResponse : GPBMessage

/**
 * The list of agent versions. There will be a maximum number of items
 * returned based on the page_size field in the request.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<Version*> *versionsArray;
/** The number of items in @c versionsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger versionsArray_Count;

/**
 * Token to retrieve the next page of results, or empty if there are no
 * more results in the list.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *nextPageToken;

@end

#pragma mark - GetVersionRequest

typedef GPB_ENUM(GetVersionRequest_FieldNumber) {
  GetVersionRequest_FieldNumber_Name = 1,
};

/**
 * The request message for [Versions.GetVersion].
 **/
@interface GetVersionRequest : GPBMessage

/**
 * Required. The name of the version.
 * Format: `projects/<Project ID>/agent/versions/<Version ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

#pragma mark - CreateVersionRequest

typedef GPB_ENUM(CreateVersionRequest_FieldNumber) {
  CreateVersionRequest_FieldNumber_Parent = 1,
  CreateVersionRequest_FieldNumber_Version = 2,
};

/**
 * The request message for [Versions.CreateVersion].
 **/
@interface CreateVersionRequest : GPBMessage

/**
 * Required. The agent to create a version for.
 * Format: `projects/<Project ID>/agent`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

/** Required. The version to create. */
@property(nonatomic, readwrite, strong, null_resettable) Version *version;
/** Test to see if @c version has been set. */
@property(nonatomic, readwrite) BOOL hasVersion;

@end

#pragma mark - UpdateVersionRequest

typedef GPB_ENUM(UpdateVersionRequest_FieldNumber) {
  UpdateVersionRequest_FieldNumber_Version = 1,
  UpdateVersionRequest_FieldNumber_UpdateMask = 2,
};

/**
 * The request message for [Versions.UpdateVersion].
 **/
@interface UpdateVersionRequest : GPBMessage

/**
 * Required. The version to update.
 * Format: `projects/<Project ID>/agent/versions/<Version ID>`.
 **/
@property(nonatomic, readwrite, strong, null_resettable) Version *version;
/** Test to see if @c version has been set. */
@property(nonatomic, readwrite) BOOL hasVersion;

/** Optional. The mask to control which fields get updated. */
@property(nonatomic, readwrite, strong, null_resettable) GPBFieldMask *updateMask;
/** Test to see if @c updateMask has been set. */
@property(nonatomic, readwrite) BOOL hasUpdateMask;

@end

#pragma mark - DeleteVersionRequest

typedef GPB_ENUM(DeleteVersionRequest_FieldNumber) {
  DeleteVersionRequest_FieldNumber_Name = 1,
};

/**
 * The request message for [Versions.DeleteVersion].
 **/
@interface DeleteVersionRequest : GPBMessage

/**
 * Required. The name of the version to delete.
 * Format: `projects/<Project ID>/agent/versions/<Version ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)