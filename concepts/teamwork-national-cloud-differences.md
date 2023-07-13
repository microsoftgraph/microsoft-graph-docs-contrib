---
title: "Microsoft Teams API implementation differences in national clouds"
description: "Learn about Microsoft Teams API implementation differences in the national clouds."
author: "MSGraphDocsVTeam"
ms.localizationpriority: high
doc_type: conceptualPageType
---

# Microsoft Teams API implementation differences in national clouds

This article describes Microsoft Teams API implementation differences between the Microsoft Graph global endpoint and the national clouds.

For general information about national cloud availability for Microsoft Graph APIs, see [National cloud deployments](/graph/deployments).

> [!NOTE]
> Microsoft Teams APIs are not available in the Microsoft Cloud China operated by 21Vianet national cloud.

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
|[Channels](/graph/api/resources/channel) | All channel-based APIs are not supported in the context of shared channels. |
| **Chats**            |                                                          |
|[Get chat](/graph/api/chat-get)| Chats with meetings associated with them are not supported in application context in the GCC High and DOD environments. |
|[List chats](/graph/api/chat-list)| The `OrderBy` OData query parameter is not supported. |
| **Meeting transcripts**            |                                                          |
|[List transcripts](/graph/api/onlinemeeting-list-transcripts) | Not supported. |
|[Get transcript](/graph/api/calltranscript-get) | Not supported. |
| **Messages**            |                                                          |
|[Soft delete a message](/graph/api/chatmessage-softdelete) | Not supported in the GCC High and DOD Environments. |
|[List messages in a chat](/graph/api/chat-list-messages) | The `OrderBy` OData query parameter is not supported in the GCC environment. |

