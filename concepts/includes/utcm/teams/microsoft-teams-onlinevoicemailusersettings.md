---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures a Teams User's Online Voicemail Settings.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter represents the ID of the specific user in your organization; this can be either a SIP URI or an Object ID. | - |
| CallAnswerRule | Write | String | The CallAnswerRule parameter represents the value of the call answer rule, which can be any of the following: DeclineCall, PromptOnly, PromptOnlyWithTransfer, RegularVoicemail, VoicemailWithTransferOption. | `DeclineCall`, `PromptOnly`, `PromptOnlyWithTransfer`, `RegularVoicemail`, `VoicemailWithTransferOption` |
| DefaultGreetingPromptOverwrite | Write | String | The DefaultGreetingPromptOverwrite parameter represents the contents that overwrite the default normal greeting prompt. If the user's normal custom greeting is not set and DefaultGreetingPromptOverwrite is not empty, the voicemail service will play this overwrite greeting instead of the default normal greeting in the voicemail deposit scenario. | - |
| DefaultOofGreetingPromptOverwrite | Write | String | The DefaultOofGreetingPromptOverwrite parameter represents the contents that overwrite the default out-of-office greeting prompt. If the user's out-of-office custom greeting is not set and DefaultOofGreetingPromptOverwrite is not empty, the voicemail service will play this overwrite greeting instead of the default out-of-office greeting in the voicemail deposit scenario. | - |
| OofGreetingEnabled | Write | Boolean | The OofGreetingEnabled parameter represents whether to play out-of-office greeting in voicemail deposit scenario. | - |
| OofGreetingFollowAutomaticRepliesEnabled | Write | Boolean | The OofGreetingFollowAutomaticRepliesEnabled parameter represents whether to play out-of-office greeting in voicemail deposit scenario when user set automatic replies in Outlook. | - |
| OofGreetingFollowCalendarEnabled | Write | Boolean | The OofGreetingFollowCalendarEnabled parameter represents whether to play out-of-office greeting in voicemail deposit scenario when user set out-of-office in calendar. | - |
| PromptLanguage | Write | String | The PromptLanguage parameter represents the language that is used to play voicemail prompts. | - |
| ShareData | Write | Boolean | Specifies whether voicemail and transcription data is shared with the service for training and improving accuracy. | - |
| TransferTarget | Write | String | The TransferTarget parameter represents the target to transfer the call when call answer rule set to PromptOnlyWithTransfer or VoicemailWithTransferOption. Value of this parameter should be a SIP URI of another user in your organization. For user with Enterprise Voice enabled, a valid telephone number could also be accepted as TransferTarget. | - |
| VoicemailEnabled | Write | Boolean | The VoicemailEnabled parameter represents whether to enable voicemail service. If set to $false, the user has no voicemail service. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



