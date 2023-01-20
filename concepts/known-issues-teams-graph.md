---
title: "Implementation differences in national clouds for the Teamwork and communications API"
description: "This article describes known issues and limitations with Microsoft Graph and provides workarounds when possible."
author: "MSGraphDocsVTeam"
ms.localizationpriority: high
---

# Implementation differences in national clouds for the Teamwork and communications APIs

This article lists down the implementation differences among different teamwork and communications api's in different national clouds.

## API wise implementation differences


### List messages in a chat

The [List messages in a chat API](../api-reference/v1.0/api/chat-list-messages.md) doesn't support `OrderBy` parameter in the `Microsoft Graph for US Government L4` national cloud.

### Api's for managing apps installed in a user's personal scope

Api's to manage apps installed in a user's personal scope are not supported in Application context in the `Microsoft Graph for US Government L4` cloud.
Following api's are included.
[List apps installed for user](../api-reference/v1.0/api/userteamwork-list-installedapps.md) 
[Install app for user](../api-reference/v1.0/api/userteamwork-post-installedapps.md) 
[Get app installed for user](../api-reference/v1.0/api/userteamwork-get-installedapps.md) 
[Get chat between user and app](../api-reference/v1.0/api/userscopeteamsappinstallation-get-chat.md) 
[Upgrade installed app for user](../api-reference/v1.0/api/userteamwork-teamsappinstallation-upgrade.md) 
[Uninstall app for user](../api-reference/v1.0/api/userteamwork-delete-installedapps.md) 

### List chats
The [List chats](../api-reference/v1.0/api/chat-list.md) doesn't support `OrderBy` parameter in the `Microsoft Graph for US Government L4` national cloud.

### Get Chat
The [Get chat](../api-reference/v1.0/api/chat-get.md) api doesn't support chats with meetings associated with them in application context in the `Microsoft Graph for US Government L4` national cloud.

### Meeting transcript api's
All the api's associated with [meeting transcripts](../api/resources/calltranscript.md) are not supported in the `Microsoft Graph for US Government L4` national cloud.
Following api's are included.
[List transcripts](../api-reference/v1.0/api/onlinemeeting-list-transcripts.md) 
[Get transcript](../api-reference/v1.0/api/calltranscript-get.md) 

### Soft delete a message

The [Soft delete a message](../api-reference/beta/api/chatmessage-softdelete.md) api doesn't work in the `Microsoft Graph for US Government L4` national cloud.