---
title: "Microsoft Teams API implementation differences in national clouds"
description: "Learn about implementation differences in the national clouds for the Teamwork and communications APIs."
author: "MSGraphDocsVTeam"
ms.localizationpriority: high
doc_type: conceptualPageType
---

# Microsoft Teams API implementation differences in national clouds

This article describes Microsoft Teams API implementation differences between the Microsoft Graph global endpoint and the Microsoft Graph for US Government L4 cloud, including the Microsoft 365 GCC and Microsoft 365 GCC High environments.

For general information about national cloud availability for Microsoft Graph APIs, see [National cloud deployments](/graph/deployments).

## Microsoft Cloud China operated by 21Vianet

Microsoft Teams APIs are not available in the Microsoft Cloud China operated by 21Vianet national cloud.

## Microsoft Graph for US Government L4 cloud

### List messages in a chat API doesn't support `OrderBy`

The [List messages in a chat](/graph/api/chat-list-messages) API doesn't support the `OrderBy` OData query parameter in the Microsoft 365 GCC environment in the Microsoft Graph for US Government L4 national cloud.

### List chats API doesn't support `OrderBy`

The [List chats](/graph/api/chat-list) API doesn't support the `OrderBy` OData query parameter in the Microsoft Graph for US Government L4 national cloud.

### APIs for managing apps installed in a user's personal scope are not supported

APIs for managing apps installed in a user's personal scope are not supported in application context in the Microsoft 365 GCC High environment in the Microsoft Graph for US Government L4 cloud. This includes the following APIs:

- [List apps installed for user](/graph/api/userteamwork-list-installedapps) 
- [Install app for user](/graph/api/userteamwork-post-installedapps) 
- [Get app installed for user](/graph/api/userteamwork-get-installedapps) 
- [Get chat between user and app](/graph/api/userscopeteamsappinstallation-get-chat) 
- [Upgrade installed app for user](/graph/api/userteamwork-teamsappinstallation-upgrade) 
- [Uninstall app for user](/graph/api/userteamwork-delete-installedapps) 

### Get chat doesn't support chats with meetings

The [Get chat](/graph/api/chat-get) API doesn't support chats with meetings associated with them in application context in the Microsoft 365 GCC High environment in the Microsoft Graph for US Government L4 national cloud.

### Meeting transcript APIs are not supported

APIs associated with [meeting transcripts](/graph/api/resources/calltranscript) are not supported in the Microsoft Graph for US Government L4 national cloud. This includes the following APIs:

- [List transcripts](/graph/api/onlinemeeting-list-transcripts) 
- [Get transcript](/graph/api/calltranscript-get) 

### Soft delete a message is not supported

The [Soft delete a message](/graph/api/chatmessage-softdelete) API doesn't work in the Microsoft 365 GCC High environment in Microsoft Graph for US Government L4 national cloud.

### Channel based APIs are not supported in the context of shared channels

All the [channels](/graph/api/resources/channel) based APIs are not supported in the context of shared channels in the Microsoft Graph for US Government L4 national cloud.