// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/dialogflow/v2beta1/audio_config.proto

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

@class DFSynthesizeSpeechConfig;
@class DFVoiceSelectionParams;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum DFSsmlVoiceGender

/**
 * Gender of the voice as described in
 * [SSML voice element](https://www.w3.org/TR/speech-synthesis11/#edef_voice).
 **/
typedef GPB_ENUM(DFSsmlVoiceGender) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  DFSsmlVoiceGender_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /**
   * An unspecified gender, which means that the client doesn't care which
   * gender the selected voice will have.
   **/
  DFSsmlVoiceGender_SsmlVoiceGenderUnspecified = 0,

  /** A male voice. */
  DFSsmlVoiceGender_SsmlVoiceGenderMale = 1,

  /** A female voice. */
  DFSsmlVoiceGender_SsmlVoiceGenderFemale = 2,

  /** A gender-neutral voice. */
  DFSsmlVoiceGender_SsmlVoiceGenderNeutral = 3,
};

GPBEnumDescriptor *DFSsmlVoiceGender_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL DFSsmlVoiceGender_IsValidValue(int32_t value);

#pragma mark - Enum DFOutputAudioEncoding

/** Audio encoding of the output audio format in Text-To-Speech. */
typedef GPB_ENUM(DFOutputAudioEncoding) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  DFOutputAudioEncoding_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** Not specified. */
  DFOutputAudioEncoding_OutputAudioEncodingUnspecified = 0,

  /**
   * Uncompressed 16-bit signed little-endian samples (Linear PCM).
   * Audio content returned as LINEAR16 also contains a WAV header.
   **/
  DFOutputAudioEncoding_OutputAudioEncodingLinear16 = 1,

  /** MP3 audio. */
  DFOutputAudioEncoding_OutputAudioEncodingMp3 = 2,

  /**
   * Opus encoded audio wrapped in an ogg container. The result will be a
   * file which can be played natively on Android, and in browsers (at least
   * Chrome and Firefox). The quality of the encoding is considerably higher
   * than MP3 while using approximately the same bitrate.
   **/
  DFOutputAudioEncoding_OutputAudioEncodingOggOpus = 3,
};

GPBEnumDescriptor *DFOutputAudioEncoding_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL DFOutputAudioEncoding_IsValidValue(int32_t value);

#pragma mark - DFAudioConfigRoot

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
@interface DFAudioConfigRoot : GPBRootObject
@end

#pragma mark - DFVoiceSelectionParams

typedef GPB_ENUM(DFVoiceSelectionParams_FieldNumber) {
  DFVoiceSelectionParams_FieldNumber_Name = 1,
  DFVoiceSelectionParams_FieldNumber_SsmlGender = 2,
};

/**
 * Description of which voice to use for speech synthesis.
 **/
@interface DFVoiceSelectionParams : GPBMessage

/**
 * Optional. The name of the voice. If not set, the service will choose a
 * voice based on the other parameters such as language_code and gender.
 **/
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/**
 * Optional. The preferred gender of the voice. If not set, the service will
 * choose a voice based on the other parameters such as language_code and
 * name. Note that this is only a preference, not requirement. If a
 * voice of the appropriate gender is not available, the synthesizer should
 * substitute a voice with a different gender rather than failing the request.
 **/
@property(nonatomic, readwrite) DFSsmlVoiceGender ssmlGender;

@end

/**
 * Fetches the raw value of a @c DFVoiceSelectionParams's @c ssmlGender property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t DFVoiceSelectionParams_SsmlGender_RawValue(DFVoiceSelectionParams *message);
/**
 * Sets the raw value of an @c DFVoiceSelectionParams's @c ssmlGender property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetDFVoiceSelectionParams_SsmlGender_RawValue(DFVoiceSelectionParams *message, int32_t value);

#pragma mark - DFSynthesizeSpeechConfig

typedef GPB_ENUM(DFSynthesizeSpeechConfig_FieldNumber) {
  DFSynthesizeSpeechConfig_FieldNumber_SpeakingRate = 1,
  DFSynthesizeSpeechConfig_FieldNumber_Pitch = 2,
  DFSynthesizeSpeechConfig_FieldNumber_VolumeGainDb = 3,
  DFSynthesizeSpeechConfig_FieldNumber_Voice = 4,
  DFSynthesizeSpeechConfig_FieldNumber_EffectsProfileIdArray = 5,
};

/**
 * Configuration of how speech should be synthesized.
 **/
@interface DFSynthesizeSpeechConfig : GPBMessage

/**
 * Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal
 * native speed supported by the specific voice. 2.0 is twice as fast, and
 * 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any
 * other values < 0.25 or > 4.0 will return an error.
 **/
@property(nonatomic, readwrite) double speakingRate;

/**
 * Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20
 * semitones from the original pitch. -20 means decrease 20 semitones from the
 * original pitch.
 **/
@property(nonatomic, readwrite) double pitch;

/**
 * Optional. Volume gain (in dB) of the normal native volume supported by the
 * specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of
 * 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB)
 * will play at approximately half the amplitude of the normal native signal
 * amplitude. A value of +6.0 (dB) will play at approximately twice the
 * amplitude of the normal native signal amplitude. We strongly recommend not
 * to exceed +10 (dB) as there's usually no effective increase in loudness for
 * any value greater than that.
 **/
@property(nonatomic, readwrite) double volumeGainDb;

/**
 * Optional. An identifier which selects 'audio effects' profiles that are
 * applied on (post synthesized) text to speech. Effects are applied on top of
 * each other in the order they are given.
 **/
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *effectsProfileIdArray;
/** The number of items in @c effectsProfileIdArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger effectsProfileIdArray_Count;

/** Optional. The desired voice of the synthesized audio. */
@property(nonatomic, readwrite, strong, null_resettable) DFVoiceSelectionParams *voice;
/** Test to see if @c voice has been set. */
@property(nonatomic, readwrite) BOOL hasVoice;

@end

#pragma mark - DFOutputAudioConfig

typedef GPB_ENUM(DFOutputAudioConfig_FieldNumber) {
  DFOutputAudioConfig_FieldNumber_AudioEncoding = 1,
  DFOutputAudioConfig_FieldNumber_SampleRateHertz = 2,
  DFOutputAudioConfig_FieldNumber_SynthesizeSpeechConfig = 3,
};

/**
 * Instructs the speech synthesizer how to generate the output audio content.
 **/
@interface DFOutputAudioConfig : GPBMessage

/** Required. Audio encoding of the synthesized audio content. */
@property(nonatomic, readwrite) DFOutputAudioEncoding audioEncoding;

/**
 * Optional. The synthesis sample rate (in hertz) for this audio. If not
 * provided, then the synthesizer will use the default sample rate based on
 * the audio encoding. If this is different from the voice's natural sample
 * rate, then the synthesizer will honor this request by converting to the
 * desired sample rate (which might result in worse audio quality).
 **/
@property(nonatomic, readwrite) int32_t sampleRateHertz;

/** Optional. Configuration of how speech should be synthesized. */
@property(nonatomic, readwrite, strong, null_resettable) DFSynthesizeSpeechConfig *synthesizeSpeechConfig;
/** Test to see if @c synthesizeSpeechConfig has been set. */
@property(nonatomic, readwrite) BOOL hasSynthesizeSpeechConfig;

@end

/**
 * Fetches the raw value of a @c DFOutputAudioConfig's @c audioEncoding property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t DFOutputAudioConfig_AudioEncoding_RawValue(DFOutputAudioConfig *message);
/**
 * Sets the raw value of an @c DFOutputAudioConfig's @c audioEncoding property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetDFOutputAudioConfig_AudioEncoding_RawValue(DFOutputAudioConfig *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
