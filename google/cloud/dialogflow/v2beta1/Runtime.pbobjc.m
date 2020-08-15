// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/dialogflow/v2beta1/runtime.proto

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

#import <stdatomic.h>

#import <googleapis/Runtime.pbobjc.h>
#import <googleapis/Annotations.pbobjc.h>
#import <googleapis/Operations.pbobjc.h>
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - RuntimeRoot

@implementation RuntimeRoot

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

#pragma mark - RuntimeRoot_FileDescriptor

static GPBFileDescriptor *RuntimeRoot_FileDescriptor(void) {
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

#pragma mark - Runtime

@implementation Runtime

@dynamic name;
@dynamic description_p;
@dynamic agentVersion;
@dynamic state;
@dynamic hasUpdateTime, updateTime;

typedef struct Runtime__storage_ {
  uint32_t _has_storage_[1];
  Runtime_State state;
  NSString *name;
  NSString *description_p;
  NSString *agentVersion;
  GPBTimestamp *updateTime;
} Runtime__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = Runtime_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Runtime__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = Runtime_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Runtime__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "agentVersion",
        .dataTypeSpecific.className = NULL,
        .number = Runtime_FieldNumber_AgentVersion,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Runtime__storage_, agentVersion),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "state",
        .dataTypeSpecific.enumDescFunc = Runtime_State_EnumDescriptor,
        .number = Runtime_FieldNumber_State,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(Runtime__storage_, state),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "updateTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = Runtime_FieldNumber_UpdateTime,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(Runtime__storage_, updateTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Runtime class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Runtime__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Runtime_State_RawValue(Runtime *message) {
  GPBDescriptor *descriptor = [Runtime descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Runtime_FieldNumber_State];
  return GPBGetMessageInt32Field(message, field);
}

void SetRuntime_State_RawValue(Runtime *message, int32_t value) {
  GPBDescriptor *descriptor = [Runtime descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Runtime_FieldNumber_State];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - Enum Runtime_State

GPBEnumDescriptor *Runtime_State_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "StateUnspecified\000StateStopped\000StateLoadi"
        "ng\000StateRunning\000";
    static const int32_t values[] = {
        Runtime_State_StateUnspecified,
        Runtime_State_StateStopped,
        Runtime_State_StateLoading,
        Runtime_State_StateRunning,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(Runtime_State)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:Runtime_State_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL Runtime_State_IsValidValue(int32_t value__) {
  switch (value__) {
    case Runtime_State_StateUnspecified:
    case Runtime_State_StateStopped:
    case Runtime_State_StateLoading:
    case Runtime_State_StateRunning:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - ListRuntimesRequest

@implementation ListRuntimesRequest

@dynamic parent;
@dynamic pageSize;
@dynamic pageToken;

typedef struct ListRuntimesRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t pageSize;
  NSString *parent;
  NSString *pageToken;
} ListRuntimesRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parent",
        .dataTypeSpecific.className = NULL,
        .number = ListRuntimesRequest_FieldNumber_Parent,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListRuntimesRequest__storage_, parent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pageSize",
        .dataTypeSpecific.className = NULL,
        .number = ListRuntimesRequest_FieldNumber_PageSize,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(ListRuntimesRequest__storage_, pageSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pageToken",
        .dataTypeSpecific.className = NULL,
        .number = ListRuntimesRequest_FieldNumber_PageToken,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(ListRuntimesRequest__storage_, pageToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListRuntimesRequest class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListRuntimesRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ListRuntimesResponse

@implementation ListRuntimesResponse

@dynamic runtimesArray, runtimesArray_Count;
@dynamic nextPageToken;

typedef struct ListRuntimesResponse__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *runtimesArray;
  NSString *nextPageToken;
} ListRuntimesResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "runtimesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Runtime),
        .number = ListRuntimesResponse_FieldNumber_RuntimesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ListRuntimesResponse__storage_, runtimesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nextPageToken",
        .dataTypeSpecific.className = NULL,
        .number = ListRuntimesResponse_FieldNumber_NextPageToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListRuntimesResponse__storage_, nextPageToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListRuntimesResponse class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListRuntimesResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetRuntimeRequest

@implementation GetRuntimeRequest

@dynamic name;

typedef struct GetRuntimeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} GetRuntimeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GetRuntimeRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetRuntimeRequest__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetRuntimeRequest class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetRuntimeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CreateRuntimeRequest

@implementation CreateRuntimeRequest

@dynamic parent;
@dynamic hasRuntime, runtime;

typedef struct CreateRuntimeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *parent;
  Runtime *runtime;
} CreateRuntimeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parent",
        .dataTypeSpecific.className = NULL,
        .number = CreateRuntimeRequest_FieldNumber_Parent,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CreateRuntimeRequest__storage_, parent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "runtime",
        .dataTypeSpecific.className = GPBStringifySymbol(Runtime),
        .number = CreateRuntimeRequest_FieldNumber_Runtime,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CreateRuntimeRequest__storage_, runtime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CreateRuntimeRequest class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CreateRuntimeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - UpdateRuntimeRequest

@implementation UpdateRuntimeRequest

@dynamic hasRuntime, runtime;
@dynamic hasUpdateMask, updateMask;

typedef struct UpdateRuntimeRequest__storage_ {
  uint32_t _has_storage_[1];
  Runtime *runtime;
  GPBFieldMask *updateMask;
} UpdateRuntimeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "runtime",
        .dataTypeSpecific.className = GPBStringifySymbol(Runtime),
        .number = UpdateRuntimeRequest_FieldNumber_Runtime,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(UpdateRuntimeRequest__storage_, runtime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "updateMask",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBFieldMask),
        .number = UpdateRuntimeRequest_FieldNumber_UpdateMask,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(UpdateRuntimeRequest__storage_, updateMask),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[UpdateRuntimeRequest class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(UpdateRuntimeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - DeleteRuntimeRequest

@implementation DeleteRuntimeRequest

@dynamic name;

typedef struct DeleteRuntimeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} DeleteRuntimeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = DeleteRuntimeRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(DeleteRuntimeRequest__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[DeleteRuntimeRequest class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(DeleteRuntimeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GetRuntimeHistoryRequest

@implementation GetRuntimeHistoryRequest

@dynamic name;
@dynamic pageSize;
@dynamic pageToken;

typedef struct GetRuntimeHistoryRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t pageSize;
  NSString *name;
  NSString *pageToken;
} GetRuntimeHistoryRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GetRuntimeHistoryRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GetRuntimeHistoryRequest__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pageSize",
        .dataTypeSpecific.className = NULL,
        .number = GetRuntimeHistoryRequest_FieldNumber_PageSize,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GetRuntimeHistoryRequest__storage_, pageSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pageToken",
        .dataTypeSpecific.className = NULL,
        .number = GetRuntimeHistoryRequest_FieldNumber_PageToken,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GetRuntimeHistoryRequest__storage_, pageToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GetRuntimeHistoryRequest class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GetRuntimeHistoryRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RuntimeHistory

@implementation RuntimeHistory

@dynamic entriesArray, entriesArray_Count;
@dynamic nextPageToken;

typedef struct RuntimeHistory__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *entriesArray;
  NSString *nextPageToken;
} RuntimeHistory__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "entriesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(RuntimeHistory_Entry),
        .number = RuntimeHistory_FieldNumber_EntriesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(RuntimeHistory__storage_, entriesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "nextPageToken",
        .dataTypeSpecific.className = NULL,
        .number = RuntimeHistory_FieldNumber_NextPageToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RuntimeHistory__storage_, nextPageToken),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RuntimeHistory class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RuntimeHistory__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - RuntimeHistory_Entry

@implementation RuntimeHistory_Entry

@dynamic agentVersion;
@dynamic description_p;
@dynamic hasCreateTime, createTime;

typedef struct RuntimeHistory_Entry__storage_ {
  uint32_t _has_storage_[1];
  NSString *description_p;
  NSString *agentVersion;
  GPBTimestamp *createTime;
} RuntimeHistory_Entry__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "description_p",
        .dataTypeSpecific.className = NULL,
        .number = RuntimeHistory_Entry_FieldNumber_Description_p,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(RuntimeHistory_Entry__storage_, description_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "agentVersion",
        .dataTypeSpecific.className = NULL,
        .number = RuntimeHistory_Entry_FieldNumber_AgentVersion,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(RuntimeHistory_Entry__storage_, agentVersion),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "createTime",
        .dataTypeSpecific.className = GPBStringifySymbol(GPBTimestamp),
        .number = RuntimeHistory_Entry_FieldNumber_CreateTime,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(RuntimeHistory_Entry__storage_, createTime),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[RuntimeHistory_Entry class]
                                     rootClass:[RuntimeRoot class]
                                          file:RuntimeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(RuntimeHistory_Entry__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    [localDescriptor setupContainingMessageClassName:GPBStringifySymbol(RuntimeHistory)];
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
