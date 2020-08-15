// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/dialogflow/v2beta1/agent.proto

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

@class DFAgent;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum DFAgent_MatchMode

/** Match mode determines how intents are detected from user queries. */
typedef GPB_ENUM(DFAgent_MatchMode) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  DFAgent_MatchMode_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Not specified. */
  DFAgent_MatchMode_MatchModeUnspecified = 0,

  /**
   * Best for agents with a small number of examples in intents and/or wide
   * use of templates syntax and composite entities.
   **/
  DFAgent_MatchMode_MatchModeHybrid = 1,

  /**
   * Can be used for agents with a large number of examples in intents,
   * especially the ones using \@sys.any or very large developer entities.
   **/
  DFAgent_MatchMode_MatchModeMlOnly = 2,
};

GPBEnumDescriptor *DFAgent_MatchMode_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL DFAgent_MatchMode_IsValidValue(int32_t value);

#pragma mark - DFAgentRoot

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
@interface DFAgentRoot : GPBRootObject
@end

#pragma mark - DFAgent

typedef GPB_ENUM(DFAgent_FieldNumber) {
  DFAgent_FieldNumber_Parent = 1,
  DFAgent_FieldNumber_DisplayName = 2,
  DFAgent_FieldNumber_DefaultLanguageCode = 3,
  DFAgent_FieldNumber_SupportedLanguageCodesArray = 4,
  DFAgent_FieldNumber_TimeZone = 5,
  DFAgent_FieldNumber_Description_p = 6,
  DFAgent_FieldNumber_AvatarUri = 7,
  DFAgent_FieldNumber_EnableLogging = 8,
  DFAgent_FieldNumber_MatchMode = 9,
  DFAgent_FieldNumber_ClassificationThreshold = 10,
};

/**
 * Represents a conversational agent.
 **/
@interface DFAgent : GPBMessage

/**
 * Required. The project of this agent.
 * Format: `projects/<Project ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

/** Required. The name of this agent. */
@property(nonatomic, readwrite, copy, null_resettable) NSString *displayName;

/**
 * Required. The default language of the agent as a language tag. See
 * [Language Support](https://dialogflow.com/docs/reference/language) for a
 * list of the currently supported language codes.
 * This field cannot be set by the `Update` method.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *defaultLanguageCode;

/**
 * Optional. The list of all languages supported by this agent (except for the
 * `default_language_code`).
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *supportedLanguageCodesArray;
/** The number of items in @c supportedLanguageCodesArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger supportedLanguageCodesArray_Count;

/**
 * Required. The time zone of this agent from the
 * [time zone database](https://www.iana.org/time-zones), e.g.,
 * America/New_York, Europe/Paris.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *timeZone;

/**
 * Optional. The description of this agent.
 * The maximum length is 500 characters. If exceeded, the request is rejected.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *description_p;

/**
 * Optional. The URI of the agent's avatar.
 * Avatars are used throughout the Dialogflow console and in the self-hosted
 * [Web Demo](https://dialogflow.com/docs/integrations/web-demo) integration.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *avatarUri;

/** Optional. Determines whether this agent should log conversation queries. */
@property(nonatomic, readwrite) BOOL enableLogging;

/** Optional. Determines how intents are detected from user queries. */
@property(nonatomic, readwrite) DFAgent_MatchMode matchMode;

/**
 * Optional. To filter out false positive results and still get variety in
 * matched natural language inputs for your agent, you can tune the machine
 * learning classification threshold. If the returned score value is less than
 * the threshold value, then a fallback intent is be triggered or, if there
 * are no fallback intents defined, no intent will be triggered. The score
 * values range from 0.0 (completely uncertain) to 1.0 (completely certain).
 * If set to 0.0, the default of 0.3 is used.
 **/
@property(nonatomic, readwrite) float classificationThreshold;

@end

/**
 * Fetches the raw value of a @c DFAgent's @c matchMode property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t DFAgent_MatchMode_RawValue(DFAgent *message);
/**
 * Sets the raw value of an @c DFAgent's @c matchMode property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetDFAgent_MatchMode_RawValue(DFAgent *message, int32_t value);

#pragma mark - DFGetAgentRequest

typedef GPB_ENUM(DFGetAgentRequest_FieldNumber) {
  DFGetAgentRequest_FieldNumber_Parent = 1,
};

/**
 * The request message for [Agents.GetAgent][google.cloud.dialogflow.v2beta1.Agents.GetAgent].
 **/
@interface DFGetAgentRequest : GPBMessage

/**
 * Required. The project that the agent to fetch is associated with.
 * Format: `projects/<Project ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

@end

#pragma mark - DFSearchAgentsRequest

typedef GPB_ENUM(DFSearchAgentsRequest_FieldNumber) {
  DFSearchAgentsRequest_FieldNumber_Parent = 1,
  DFSearchAgentsRequest_FieldNumber_PageSize = 2,
  DFSearchAgentsRequest_FieldNumber_PageToken = 3,
};

/**
 * The request message for [Agents.SearchAgents][google.cloud.dialogflow.v2beta1.Agents.SearchAgents].
 **/
@interface DFSearchAgentsRequest : GPBMessage

/**
 * Required. The project to list agents from.
 * Format: `projects/<Project ID or '-'>`.
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

#pragma mark - DFSearchAgentsResponse

typedef GPB_ENUM(DFSearchAgentsResponse_FieldNumber) {
  DFSearchAgentsResponse_FieldNumber_AgentsArray = 1,
  DFSearchAgentsResponse_FieldNumber_NextPageToken = 2,
};

/**
 * The response message for [Agents.SearchAgents][google.cloud.dialogflow.v2beta1.Agents.SearchAgents].
 **/
@interface DFSearchAgentsResponse : GPBMessage

/**
 * The list of agents. There will be a maximum number of items returned based
 * on the page_size field in the request.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<DFAgent*> *agentsArray;
/** The number of items in @c agentsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger agentsArray_Count;

/**
 * Token to retrieve the next page of results, or empty if there are no
 * more results in the list.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *nextPageToken;

@end

#pragma mark - DFTrainAgentRequest

typedef GPB_ENUM(DFTrainAgentRequest_FieldNumber) {
  DFTrainAgentRequest_FieldNumber_Parent = 1,
};

/**
 * The request message for [Agents.TrainAgent][google.cloud.dialogflow.v2beta1.Agents.TrainAgent].
 **/
@interface DFTrainAgentRequest : GPBMessage

/**
 * Required. The project that the agent to train is associated with.
 * Format: `projects/<Project ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

@end

#pragma mark - DFExportAgentRequest

typedef GPB_ENUM(DFExportAgentRequest_FieldNumber) {
  DFExportAgentRequest_FieldNumber_Parent = 1,
  DFExportAgentRequest_FieldNumber_AgentUri = 2,
};

/**
 * The request message for [Agents.ExportAgent][google.cloud.dialogflow.v2beta1.Agents.ExportAgent].
 **/
@interface DFExportAgentRequest : GPBMessage

/**
 * Required. The project that the agent to export is associated with.
 * Format: `projects/<Project ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

/**
 * Optional. The
 * [Google Cloud Storage](https://cloud.google.com/storage/docs/)
 * URI to export the agent to.
 * The format of this URI must be `gs://<bucket-name>/<object-name>`.
 * If left unspecified, the serialized agent is returned inline.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *agentUri;

@end

#pragma mark - DFExportAgentResponse

typedef GPB_ENUM(DFExportAgentResponse_FieldNumber) {
  DFExportAgentResponse_FieldNumber_AgentUri = 1,
  DFExportAgentResponse_FieldNumber_AgentContent = 2,
};

typedef GPB_ENUM(DFExportAgentResponse_Agent_OneOfCase) {
  DFExportAgentResponse_Agent_OneOfCase_GPBUnsetOneOfCase = 0,
  DFExportAgentResponse_Agent_OneOfCase_AgentUri = 1,
  DFExportAgentResponse_Agent_OneOfCase_AgentContent = 2,
};

/**
 * The response message for [Agents.ExportAgent][google.cloud.dialogflow.v2beta1.Agents.ExportAgent].
 **/
@interface DFExportAgentResponse : GPBMessage

/** Required. The exported agent. */
@property(nonatomic, readonly) DFExportAgentResponse_Agent_OneOfCase agentOneOfCase;

/**
 * The URI to a file containing the exported agent. This field is populated
 * only if `agent_uri` is specified in `ExportAgentRequest`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *agentUri;

/**
 * The exported agent.
 *
 * Example for how to export an agent to a zip file via a command line:
 * <pre>curl \\
 *   'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/agent:export'\\
 *   -X POST \\
 *   -H 'Authorization: Bearer '$(gcloud auth application-default
 *   print-access-token) \\
 *   -H 'Accept: application/json' \\
 *   -H 'Content-Type: application/json' \\
 *   --compressed \\
 *   --data-binary '{}' \\
 * | grep agentContent | sed -e 's/.*"agentContent": "\\([^"]*\\)".*\/\\1/' \\
 * | base64 --decode > &lt;agent zip file&gt;</pre>
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *agentContent;

@end

/**
 * Clears whatever value was set for the oneof 'agent'.
 **/
void DFExportAgentResponse_ClearAgentOneOfCase(DFExportAgentResponse *message);

#pragma mark - DFImportAgentRequest

typedef GPB_ENUM(DFImportAgentRequest_FieldNumber) {
  DFImportAgentRequest_FieldNumber_Parent = 1,
  DFImportAgentRequest_FieldNumber_AgentUri = 2,
  DFImportAgentRequest_FieldNumber_AgentContent = 3,
};

typedef GPB_ENUM(DFImportAgentRequest_Agent_OneOfCase) {
  DFImportAgentRequest_Agent_OneOfCase_GPBUnsetOneOfCase = 0,
  DFImportAgentRequest_Agent_OneOfCase_AgentUri = 2,
  DFImportAgentRequest_Agent_OneOfCase_AgentContent = 3,
};

/**
 * The request message for [Agents.ImportAgent][google.cloud.dialogflow.v2beta1.Agents.ImportAgent].
 **/
@interface DFImportAgentRequest : GPBMessage

/**
 * Required. The project that the agent to import is associated with.
 * Format: `projects/<Project ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

/** Required. The agent to import. */
@property(nonatomic, readonly) DFImportAgentRequest_Agent_OneOfCase agentOneOfCase;

/**
 * The URI to a Google Cloud Storage file containing the agent to import.
 * Note: The URI must start with "gs://".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *agentUri;

/**
 * The agent to import.
 *
 * Example for how to import an agent via the command line:
 * <pre>curl \\
 *   'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/agent:import\\
 *    -X POST \\
 *    -H 'Authorization: Bearer '$(gcloud auth application-default
 *    print-access-token) \\
 *    -H 'Accept: application/json' \\
 *    -H 'Content-Type: application/json' \\
 *    --compressed \\
 *    --data-binary "{
 *       'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
 *    }"</pre>
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *agentContent;

@end

/**
 * Clears whatever value was set for the oneof 'agent'.
 **/
void DFImportAgentRequest_ClearAgentOneOfCase(DFImportAgentRequest *message);

#pragma mark - DFRestoreAgentRequest

typedef GPB_ENUM(DFRestoreAgentRequest_FieldNumber) {
  DFRestoreAgentRequest_FieldNumber_Parent = 1,
  DFRestoreAgentRequest_FieldNumber_AgentUri = 2,
  DFRestoreAgentRequest_FieldNumber_AgentContent = 3,
};

typedef GPB_ENUM(DFRestoreAgentRequest_Agent_OneOfCase) {
  DFRestoreAgentRequest_Agent_OneOfCase_GPBUnsetOneOfCase = 0,
  DFRestoreAgentRequest_Agent_OneOfCase_AgentUri = 2,
  DFRestoreAgentRequest_Agent_OneOfCase_AgentContent = 3,
};

/**
 * The request message for [Agents.RestoreAgent][google.cloud.dialogflow.v2beta1.Agents.RestoreAgent].
 **/
@interface DFRestoreAgentRequest : GPBMessage

/**
 * Required. The project that the agent to restore is associated with.
 * Format: `projects/<Project ID>`.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *parent;

/** Required. The agent to restore. */
@property(nonatomic, readonly) DFRestoreAgentRequest_Agent_OneOfCase agentOneOfCase;

/**
 * The URI to a Google Cloud Storage file containing the agent to restore.
 * Note: The URI must start with "gs://".
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *agentUri;

/**
 * The agent to restore.
 *
 * Example for how to restore an agent via the command line:
 * <pre>curl \\
 *   'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/agent:restore\\
 *    -X POST \\
 *    -H 'Authorization: Bearer '$(gcloud auth application-default
 *    print-access-token) \\
 *    -H 'Accept: application/json' \\
 *    -H 'Content-Type: application/json' \\
 *    --compressed \\
 *    --data-binary "{
 *        'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
 *    }"</pre>
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSData *agentContent;

@end

/**
 * Clears whatever value was set for the oneof 'agent'.
 **/
void DFRestoreAgentRequest_ClearAgentOneOfCase(DFRestoreAgentRequest *message);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)