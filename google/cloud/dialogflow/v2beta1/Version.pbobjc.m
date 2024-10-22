// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/dialogflow/v2beta1/version.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <googleapis/Version.pbobjc.h>
#import <googleapis/Annotations.pbobjc.h>
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - VersionRoot

@implementation VersionRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[AnnotationsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - VersionRoot_FileDescriptor

static GPBFileDescriptor *VersionRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.cloud.dialogflow.v2beta1"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Version

@implementation Version

@dynamic name;
@dynamic description_p;
@dynamic versionNumber;
@dynamic hasCreateTime, createTime;

typedef struct Version__storage_ {
  uint32_t _has_storage_[1];
  int32_t versionNumber;
  NSString *name;
  NSString *description_p;
  GPBTimestamp *createTime;
} Version__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = Version_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Version__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = Version_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Version__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "versionNumber",
        .dataTypeSpecific.className = NULL,
        .number = Version_FieldNumber_VersionNumber,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Version__storage_, versionNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "createTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = Version_FieldNumber_CreateTime,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Version__storage_, createTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Version class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Version__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ListVersionsRequest

@implementation ListVersionsRequest

@dynamic parent;
@dynamic pageSize;
@dynamic pageToken;

typedef struct ListVersionsRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t pageSize;
  NSString *parent;
  NSString *pageToken;
} ListVersionsRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parent",
        .dataTypeSpecific.className = NULL,
        .number = ListVersionsRequest_FieldNumber_Parent,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListVersionsRequest__storage_, parent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pageSize",
        .dataTypeSpecific.className = NULL,
        .number = ListVersionsRequest_FieldNumber_PageSize,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ListVersionsRequest__storage_, pageSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pageToken",
        .dataTypeSpecific.className = NULL,
        .number = ListVersionsRequest_FieldNumber_PageToken,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ListVersionsRequest__storage_, pageToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListVersionsRequest class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListVersionsRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ListVersionsResponse

@implementation ListVersionsResponse

@dynamic versionsArray, versionsArray_Count;
@dynamic nextPageToken;

typedef struct ListVersionsResponse__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *versionsArray;
  NSString *nextPageToken;
} ListVersionsResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "versionsArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Version),
        .number = ListVersionsResponse_FieldNumber_VersionsArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ListVersionsResponse__storage_, versionsArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nextPageToken",
        .dataTypeSpecific.className = NULL,
        .number = ListVersionsResponse_FieldNumber_NextPageToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListVersionsResponse__storage_, nextPageToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListVersionsResponse class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListVersionsResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetVersionRequest

@implementation GetVersionRequest

@dynamic name;

typedef struct GetVersionRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} GetVersionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GetVersionRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetVersionRequest__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetVersionRequest class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetVersionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CreateVersionRequest

@implementation CreateVersionRequest

@dynamic parent;
@dynamic hasVersion, version;

typedef struct CreateVersionRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *parent;
  Version *version;
} CreateVersionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parent",
        .dataTypeSpecific.className = NULL,
        .number = CreateVersionRequest_FieldNumber_Parent,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CreateVersionRequest__storage_, parent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "version",
        .dataTypeSpecific.className = GPBStringifySymbol(Version),
        .number = CreateVersionRequest_FieldNumber_Version,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CreateVersionRequest__storage_, version),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CreateVersionRequest class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CreateVersionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - UpdateVersionRequest

@implementation UpdateVersionRequest

@dynamic hasVersion, version;
@dynamic hasUpdateMask, updateMask;

typedef struct UpdateVersionRequest__storage_ {
  uint32_t _has_storage_[1];
  Version *version;
  GPBFieldMask *updateMask;
} UpdateVersionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "version",
        .dataTypeSpecific.className = GPBStringifySymbol(Version),
        .number = UpdateVersionRequest_FieldNumber_Version,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(UpdateVersionRequest__storage_, version),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "updateMask",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBFieldMask),
        .number = UpdateVersionRequest_FieldNumber_UpdateMask,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(UpdateVersionRequest__storage_, updateMask),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[UpdateVersionRequest class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(UpdateVersionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - DeleteVersionRequest

@implementation DeleteVersionRequest

@dynamic name;

typedef struct DeleteVersionRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} DeleteVersionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = DeleteVersionRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DeleteVersionRequest__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DeleteVersionRequest class]
                                     rootClass:[VersionRoot class]
                                          file:VersionRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DeleteVersionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
