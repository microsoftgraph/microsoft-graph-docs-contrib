---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource is used to configure the Teams messaging policy.

More information: https://docs.microsoft.com/en-us/microsoftteams/messaging-policies-in-teams


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity for the teams messaging policy you're modifying. To modify the global policy, use this syntax: -Identity global. To modify a per-user policy, use syntax similar to this: -Identity TeamsMessagingPolicy. | - |
| AllowCommunicationComplianceEndUserReporting | Write | Boolean | Report inappropriate content. | - |
| AllowFluidCollaborate | Write | Boolean | Determines is Fluid Collaboration should be enabled or not. | - |
| AllowSecurityEndUserReporting | Write | Boolean | Report a security concern. | - |
| AllowGiphy | Write | Boolean | Determines whether a user is allowed to access and post Giphys. Set this to TRUE to allow. Set this FALSE to prohibit. | - |
| AllowMemes | Write | Boolean | Determines whether a user is allowed to access and post memes. Set this to TRUE to allow. Set this FALSE to prohibit. | - |
| AllowOwnerDeleteMessage | Write | Boolean | Determines whether owners are allowed to delete all the messages in their team. Set this to TRUE to allow. Set this to FALSE to prohibit. | - |
| AllowUserEditMessage | Write | Boolean | Determines whether a user is allowed to edit their own messages. Set this to TRUE to allow. Set this to FALSE to prohibit. | - |
| AllowSmartCompose | Write | Boolean | Turn on this setting to let a user get text predictions for chat messages. | - |
| AllowSmartReply | Write | Boolean | Turn this setting on to enable suggested replies for chat messages. Set this to TRUE to allow. Set this to FALSE to prohibit. | - |
| AllowStickers | Write | Boolean | Determines whether a user is allowed to access and post stickers. Set this to TRUE to allow. Set this FALSE to prohibit. | - |
| AllowUrlPreviews | Write | Boolean | Use this setting to turn automatic URL previewing on or off in messages. Set this to TRUE to turn on. Set this to FALSE to turn off. | - |
| AllowUserChat | Write | Boolean | Determines whether a user is allowed to chat. Set this to TRUE to allow a user to chat across private chat, group chat and in meetings. Set this to FALSE to prohibit all chat. | - |
| AllowUserDeleteMessage | Write | Boolean | Determines whether a user is allowed to delete their own messages. Set this to TRUE to allow. Set this to FALSE to prohibit. | - |
| AllowUserTranslation | Write | Boolean | Determines whether a user is allowed to translate messages to their client languages. Set this to TRUE to allow. Set this to FALSE to prohibit. | - |
| AllowImmersiveReader | Write | Boolean | Determines whether a user is allowed to use Immersive Reader for reading conversation messages. Set this to TRUE to allow. Set this FALSE to prohibit. | - |
| AllowRemoveUser | Write | Boolean | Determines whether a user is allowed to remove a user from a conversation. Set this to TRUE to allow. Set this FALSE to prohibit. | - |
| AllowPriorityMessages | Write | Boolean | Determines whether a user is allowed to send priorities messages. Set this to TRUE to allow. Set this FALSE to prohibit. | - |
| AllowUserDeleteChat | Write | Boolean | Turn this setting on to allow users to permanently delete their 1:1, group chat, and meeting chat as participants (this deletes the chat only for them, not other users in the chat). | - |
| AllowVideoMessages | Write | Boolean | Determines whether a user is allowed to send video messages in Chat. Set this to TRUE to allow a user to send video messages. Set this to FALSE to prohibit sending video messages. | - |
| Description | Write | String | Provide a description of your policy to identify purpose of creating it. | - |
| GiphyRatingType | Write | String | Determines the Giphy content restrictions applicable to a user. Set this to STRICT, MODERATE or NORESTRICTION. | `STRICT`, `MODERATE`, `NORESTRICTION` |
| ReadReceiptsEnabledType | Write | String | Use this setting to specify whether read receipts are user controlled, enabled for everyone, or disabled. Set this to UserPreference, Everyone or None. | `UserPreference`, `Everyone`, `None` |
| ChannelsInChatListEnabledType | Write | String | Possible values are: DisabledUserOverride,EnabledUserOverride. | `DisabledUserOverride`, `EnabledUserOverride` |
| AudioMessageEnabledType | Write | String | Determines whether a user is allowed to send audio messages. Possible values are: ChatsAndChannels,ChatsOnly,Disabled. | `ChatsAndChannels`, `ChatsOnly`, `Disabled` |
| Tenant | Write | String | Globally unique identifier (GUID) of the tenant account whose external user communication policy are being created. | - |
| Ensure | Write | String | Present ensures the Team Message Policy exists, absent ensures it's removed | `Present`, `Absent` |


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

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



