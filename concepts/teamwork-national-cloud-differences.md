---
title: "Microsoft Teams API implementation differences in national clouds"
description: "Learn about Microsoft Teams API implementation differences in the national clouds."
author: "MSGraphDocsVTeam"
ms.localizationpriority: high
doc_type: conceptualPageType
ms.date: 11/07/2024
ms.topic: article
---

# Microsoft Teams API implementation differences in national clouds

This article describes Microsoft Teams API implementation differences between the Microsoft Graph global endpoint and the national clouds.

For general information about national cloud availability for Microsoft Graph APIs, see [National cloud deployments](/graph/deployments).

## Implementation differences in Microsoft Graph for US Government cloud

This section describes implementation differences in the Microsoft Graph for US Government for all the available environments.


|API    | Details              |
|:--------------------|:---------------------------------------------------------|
| **Apps**            |                                                          |
|[List apps installed for user](/graph/api/userteamwork-list-installedapps)| Not supported in application context in the GCC High and DOD environments. |
|[Install app for user](/graph/api/userteamwork-post-installedapps)| Not supported in application context in the GCC High and DOD environments. |
|[Get app installed for user](/graph/api/userteamwork-get-installedapps)| Not supported in the application context in the GCC High and DOD environments. |
|[Get chat between user and app](/graph/api/userscopeteamsappinstallation-get-chat)| Not supported in application context in the GCC High and DOD environments. |
|[Upgrade installed app for user](/graph/api/userteamwork-teamsappinstallation-upgrade) | Not supported in application context in the GCC High and DOD environments. |
|[Uninstall app for user](/graph/api/userteamwork-delete-installedapps) | Not supported in application context in the GCC High and DOD environments. |
| **Channels**            |                                                          |
|[Provision Email address](/graph/api/channel-provisionemail) | Not supported. |
|[Channels](/graph/api/resources/channel) | All channel-based APIs aren't supported in the context of shared channels. |
| **Chats**            |                                                          |
|[Get chat](/graph/api/chat-get)| Chats with meetings associated with them aren't supported in application context in the GCC High and DOD environments. |
|[List chats](/graph/api/chat-list)| The `OrderBy` OData query parameter is not supported. |
| **Meeting AI insights**            |                                                          |
|[List AI insights](/microsoft-365-copilot/extensibility/api-reference/onlinemeeting-list-aiinsights) | Not supported. |
|[Get AI insight](/microsoft-365-copilot/extensibility/api-reference/callaiinsight-get) | Not supported. |
| **Meeting recordings**            |                                                          |
|[Get delta by organizer](/graph/api/callrecording-delta) | Not supported. |
|[List recordings by organizer](/graph/api/onlinemeeting-getallrecordings) | Not supported. |
| **Meeting transcripts**            |                                                          |
|[Get delta by organizer](/graph/api/calltranscript-delta) | Not supported. |
|[List transcripts by organizer](/graph/api/onlinemeeting-getalltranscripts) | Not supported. |
| **Messages**            |                                                          |
|[Soft delete a message](/graph/api/chatmessage-softdelete) | Not supported in the GCC High and DOD Environments. |
|[List messages in a chat](/graph/api/chat-list-messages) | The `OrderBy` OData query parameter isn't supported in the GCC environment. |

## Implementation differences in Microsoft Graph for Microsoft Graph China operated by 21Vianet

This section describes implementation differences in the Microsoft Graph for the Microsoft Graph China operated by 21Vianet.

|API    | Details              |
|:--------------------|:---------------------------------------------------------|
**Apps**            |                                                          |
[Apps in Microsoft Teams app catalog](/graph/api/resources/teamsapp) | APIs to create, update, or delete apps in the catalog aren't supported.
[App installation](/graph/api/resources/teamsappinstallation) | APIs to manage app installation aren't supported in any scope.
[Resource-specific permission grant](/graph/api/resources/resourcespecificpermissiongrant) | APIs to list resource-specific permission grants aren't supported in any scope.
**Activity Feed**            |                                                          |
| [Activity Feed notifications](/graph/teams-send-activityfeednotifications)| APIs to send activity feed notifications aren't supported in any scope. |
| **Tabs**            |                                                          |
[Tabs](/graph/api/resources/teamstab) | APIs to manage tabs in chat and channels aren't supported.
| **Channel**            |                                                          |
[Channel](/graph/api/resources/channel) | Channel APIs aren't supported in the context of shared channels, which are channels with a **channelMembershipType** value of `shared`.
| **Chat**            |                                                          |
|[List chats](/graph/api/chat-list)| The `OrderBy` OData query parameter isn't supported. |
| **Messaging**            |                                                          |
[Export content](/microsoftteams/export-teams-content) | APIs to export chat and channel messages aren't supported.
| **Team Membership**            |                                                          |
Membership | Membership APIs to add and delete guests aren't supported.
| **Change notifications**            |                                                          |
[Change notifications](/graph/api/resources/change-notifications-api-overview) | Change notifications aren't supported for Microsoft Teams resources.
| **Meeting AI insights**            |                                                          |
|[List AI insights](/microsoft-365-copilot/extensibility/api-reference/onlinemeeting-list-aiinsights) | Not supported. |
|[Get AI insight](/microsoft-365-copilot/extensibility/api-reference/callaiinsight-get) | Not supported. |
| **Meeting transcripts**            |                                                          |
|[List transcripts](/graph/api/onlinemeeting-list-transcripts) | Not supported. |
|[Get transcript](/graph/api/calltranscript-get) | Not supported. |
|[Get delta by organizer](/graph/api/calltranscript-delta) | Not supported. |
|[List transcripts by organizer](/graph/api/onlinemeeting-getalltranscripts) | Not supported. |
| **HostedContent**            |                                                          |
[Hosted Content](/graph/api/chatmessagehostedcontent-get) | APIs to manage hosted content aren't supported in application context.

