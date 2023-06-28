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

## Implementation differences in Microsoft Graph for US Government L4 cloud

This section describes implementation differences in the Microsoft Graph for US Government L4 cloud, including the Microsoft 365 GCC and Microsoft 365 GCC High environments.


### Apps


|API    | Details              |
|:--------------------|:---------------------------------------------------------|
|[List apps installed for user](/graph/api/userteamwork-list-installedapps)| Not supported in the application context in the GCC High Environment. |
|[Install app for user](/graph/api/userteamwork-post-installedapps)| Not supported in the application context in the GCC High Environment. |
|[Get app installed for user](/graph/api/userteamwork-get-installedapps)| Not supported in the application context in the GCC High Environment. |
|[Get chat between user and app](/graph/api/userscopeteamsappinstallation-get-chat)| Not supported in the application context in the GCC High Environment. |
|[Upgrade installed app for user](/graph/api/userteamwork-teamsappinstallation-upgrade) | Not supported in the application context in the GCC High Environment. |
|[Uninstall app for user](/graph/api/userteamwork-delete-installedapps) | Not supported in the application context in the GCC High Environment. |


### Chats

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[Get chat](/graph/api/chat-get)| API doesn't support chats with meetings associated with them in application context in the GCC High Environment. |
|[List chats](/graph/api/chat-list)| API doesn't support the `OrderBy` OData query parameter. |


### Meeting transcripts

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[List transcripts](/graph/api/onlinemeeting-list-transcripts) | Not supported. |
|[Get transcript](/graph/api/calltranscript-get) | Not supported. |

### Messages

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[Soft delete a message](/graph/api/chatmessage-softdelete) | Not supported in the GCC High Environment. |
|[List messages in a chat](/graph/api/chat-list-messages) | API doesn't support the `OrderBy` OData query parameter in the GCC Environment. |

### Channels

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[Provision Email address](/graph/api/channel-provisionemail) | Not supported. |
|[Channels](/graph/api/resources/channel) | All channel based APIs are not supported in the context of shared channels. |

## Implementation differences in Microsoft Graph for US Government L5 cloud

This section describes implementation differences in the Microsoft Graph for US Government L5 cloud.

### Apps


|API    | Details              |
|:--------------------|:---------------------------------------------------------|
|[List apps installed for user](/graph/api/userteamwork-list-installedapps)| Not supported in the application context. |
|[Install app for user](/graph/api/userteamwork-post-installedapps)| Not supported in the application context. |
|[Get app installed for user](/graph/api/userteamwork-get-installedapps)| Not supported in the application context. |
|[Get chat between user and app](/graph/api/userscopeteamsappinstallation-get-chat)| Not supported in the application context. |
|[Upgrade installed app for user](/graph/api/userteamwork-teamsappinstallation-upgrade) | Not supported in the application context. |
|[Uninstall app for user](/graph/api/userteamwork-delete-installedapps) | Not supported in the application context. |

### Chats

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[Get chat](/graph/api/chat-get)| API doesn't support chats with meetings associated with them in application context. |
|[List chats](/graph/api/chat-list)| API doesn't support the `OrderBy` OData query parameter. |

### Meeting transcripts

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[List transcripts](/graph/api/onlinemeeting-list-transcripts) | Not supported. |
|[Get transcript](/graph/api/calltranscript-get) | Not supported. |

### Messages

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[Soft delete a message](/graph/api/chatmessage-softdelete) | Not supported. |
|[List messages in a chat](/graph/api/chat-list-messages) | API doesn't support the `OrderBy` OData query parameter. |

### Channels

|API       | Details              |
|:--------------------|:---------------------------------------------------------|
|[Provision Email address](/graph/api/channel-provisionemail) | Not supported. |
|[Channels](/graph/api/resources/channel) | All channel based APIs are not supported in the context of shared channels. |