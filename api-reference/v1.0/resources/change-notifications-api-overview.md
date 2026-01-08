---
title: "Overview:  Microsoft Graph API change notifications"
description: "Deliver change notifications to clients."
ms.localizationpriority: high
author: "keylimesoda"
ms.subservice: change-notifications
doc_type: conceptualPageType
ms.date: 09/10/2022
---

# Microsoft Graph API change notifications

Namespace: microsoft.graph

The Microsoft Graph REST API can deliver change notifications to clients through various endpoints, including webhooks, Event Hubs, and Event Grid. To learn how to subscribe and receive notifications for your application, see [Set up notifications for changes in user data](/graph/change-notifications-overview).

[!INCLUDE [change-notifications-supported-resources-expanded](../../../concepts/includes/change-notifications-supported-resources-expanded.md)]

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Related content

- [subscription resource type](./subscription.md)
- [Lifecycle notifications](/graph/change-notifications-lifecycle-events)
- [Change notification C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/csharp)
- [Change notification Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/nodejs)