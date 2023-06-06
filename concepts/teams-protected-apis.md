---
title: "Protected APIs in Microsoft Teams"
description: "Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs and require additional validation before you can use them."
author: "nkramer"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# Protected APIs in Microsoft Teams

> [!CAUTION] 
> In the past, Microsoft Teams APIs in Microsoft Graph that accessed sensitive data were considered as protected APIs. App owners were required to submit an approval request through an online form, so that we could approve and track the apps that use the protected APIs.

> The approval process was manual and was not instant.  You spoke and we listened!  We have been building other features that serve a similar purpose.  We are now able to deprecate the manual approval process.

> Starting May 18th, 2023, the online form and the protected API approval process are no longer needed.  You can immediately call the protected APIs as long as the [requirements for accessing without a user](/graph/auth-v2-service) are met.

Microsoft Teams APIs in Microsoft Graph that access sensitive data are considered protected APIs. These APIs require that you have additional validation beyond permissions and consent before you can use them.

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
## Request access to protected APIs

To request access to these protected APIs, complete the following [request form](https://aka.ms/teamsgraph/requestaccess). We usually review access requests every Wednesday and deploy approvals every Friday or Monday, except during major holiday weeks in the U.S. Submissions during those weeks are processed the following non-holiday week.

To verify whether your request has been approved, test your application access on the next applicable Monday. If we have additional questions about the request, we will contact the email specified in the form.

## See also

* [Microsoft Teams API overview](teams-concept-overview.md)
