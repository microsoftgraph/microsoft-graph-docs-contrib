---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Teams Online Voicemail Policies.

More information: https://learn.microsoft.com/en-us/microsoftteams/manage-voicemail-policies


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Online Voicemail Policy. | - |
| EnableEditingCallAnswerRulesSetting | Write | Boolean | Controls if editing call answer rule settings are enabled or disabled for a user. Possible values are $true or $false. | - |
| EnableTranscription | Write | Boolean | Allows you to disable or enable voicemail transcription. Possible values are $true or $false. | - |
| EnableTranscriptionProfanityMasking | Write | Boolean | Allows you to disable or enable profanity masking for the voicemail transcriptions. Possible values are $true or $false. | - |
| EnableTranscriptionTranslation | Write | Boolean | Allows you to disable or enable translation for the voicemail transcriptions. Possible values are $true or $false. | - |
| MaximumRecordingLength | Write | String | A duration of voicemail maximum recording length. The length should be between 30 seconds to 600 seconds. | - |
| PrimarySystemPromptLanguage | Write | String | The primary (or first) language that voicemail system prompts will be presented in. Must also set SecondarySystemPromptLanguage. When set, this overrides the user language choice. | - |
| SecondarySystemPromptLanguage | Write | String | The secondary language that voicemail system prompts will be presented in. Must also set PrimarySystemPromptLanguage and may not be the same value as PrimarySystemPromptanguage. When set, this overrides the user language choice.  | - |
| ShareData | Write | String | Specifies whether voicemail and transcription data are shared with the service for training and improving accuracy. Possible values are Defer and Deny. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



