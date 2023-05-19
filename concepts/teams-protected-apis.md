---
title: "Protected APIs in Microsoft Teams"
description: "Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs and require additional validation before you can use them."
author: "nkramer"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# Protected APIs in Microsoft Teams

Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs. These APIs require that you have additional validation beyond permissions and consent before you can use them.

You can call these protected APIs as long as other requirements, such as [app registration](/azure/active-directory/develop/quickstart-register-app) and [subscription association](metered-api-setup.md) are met.

The following APIs are currently protected, and all use [Microsoft Graph application permissions](auth/auth-concepts.md#microsoft-graph-permissions):

* [List channel messages](/graph/api/channel-list-messages)
* [Get chatMessages in a channel delta](/graph/api/chatmessage-delta)
* [Get channel message](/graph/api/chatmessage-get)
* [Create subscription for new channel messages](/graph/api/subscription-post-subscriptions)
* [List replies to a message](/graph/api/chatmessage-list-replies)
* [Get a reply to a message](/graph/api/chatmessage-get)
* (List chats doesn't exist, with or without protected API access)
* [List messages in a chat](/graph/api/chat-list-messages)
* [Get message in chat](/graph/api/chatmessage-get)
* [Create subscription for new chat messages](/graph/api/subscription-post-subscriptions)
* [List all hosted content](/graph/api/chatmessage-list-hostedcontents)
* [Get hosted content](/graph/api/chatmessagehostedcontent-get)
* [Get messages in a deleted team](/graph/api/deletedteam-getallmessages)

> [!NOTE]
> [Send message](/graph/api/channel-post-messages) is not a protected API.

## See also

* [Microsoft Teams API overview](teams-concept-overview.md)