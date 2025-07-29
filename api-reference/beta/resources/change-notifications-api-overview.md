---
title: "Use the Microsoft Graph API to get change notifications"
description: "Deliver change notifications to clients."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: conceptualPageType
ms.subservice: change-notifications
ms.date: 06/07/2024
---

# Use the Microsoft Graph API to get change notifications

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

The Microsoft Graph REST API can deliver change notifications to clients through various endpoints, including webhooks, Event Hubs, and Event Grid. To learn how to subscribe and receive notifications for your application, see [Set up notifications for changes in user data](/graph/change-notifications-overview).

[!INCLUDE [change-notifications-supported-resources-expanded](../../../concepts/includes/change-notifications-supported-resources-expanded.md)]

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Related content

- [subscription resource type](subscription.md)
- [Training module: Use change notifications and track changes with Microsoft Graph](/training/modules/msgraph-changenotifications-trackchanges)
- [Lifecycle notifications](/graph/change-notifications-lifecycle-events)
- [Change notifications C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/csharp)
- [Change notifications Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/nodejs)
