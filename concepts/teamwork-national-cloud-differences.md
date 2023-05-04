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

## Implementation differences in Microsoft Graph across different national clouds

This section describes implementation differences in the Microsoft Graph for US Government L4 cloud, including the Microsoft 365 GCC and Microsoft 365 GCC High environments.


### Apps


|API    | Limitation(s)              |
|:--------------------|:---------------------------------------------------------|
|[List apps installed for user](/graph/api/userteamwork-list-installedapps)| Not supported in the application context in the US Government L4 cloud / GCC High Environment. |
|[Install app for user](/graph/api/userteamwork-post-installedapps)| Not supported in the application context in the US Government L4 cloud / GCC High Environment. |
|[Get app installed for user](/graph/api/userteamwork-get-installedapps)| Not supported in the application context in the US Government L4 cloud / GCC High Environment. |
|[Get chat between user and app](/graph/api/userscopeteamsappinstallation-get-chat)| Not supported in the application context in the US Government L4 cloud / GCC High Environment. |
|[Upgrade installed app for user](/graph/api/userteamwork-teamsappinstallation-upgrade) | Not supported in the application context in the US Government L4 cloud / GCC High Environment. |
|[Uninstall app for user](/graph/api/userteamwork-delete-installedapps) | Not supported in the application context in the US Government L4 cloud / GCC High Environment. |


### Chats

|API       | Limitation(s)              |
|:--------------------|:---------------------------------------------------------|
|[Get chat](/graph/api/chat-get)| API doesn't support chats with meetings associated with them in application context in the US Government L4 cloud / GCC High Environment. |
|[List chats](/graph/api/chat-list)| API doesn't support the `OrderBy` OData query parameter in the US Government L4 cloud. |


### Meeting transcripts

|API       | Limitation(s)              |
|:--------------------|:---------------------------------------------------------|
|[List transcripts](/graph/api/onlinemeeting-list-transcripts) | Not supported in the US Government L4 cloud. |
|[Get transcript](/graph/api/calltranscript-get) | Not supported in the US Government L4 cloud. |

### Messages

|API       | Limitation(s)              |
|:--------------------|:---------------------------------------------------------|
|[Soft delete a message](/graph/api/chatmessage-softdelete) | Not supported in the US Government L4 cloud / GCC High Environment. |
|[List messages in a chat](/graph/api/chat-list-messages) | API doesn't support the `OrderBy` OData query parameter in the US Government L4 cloud / GCC Environment. |

### Channels

All the [channels](/graph/api/resources/channel) based APIs are not supported in the context of shared channels in the Microsoft Graph for US Government L4 national cloud.

