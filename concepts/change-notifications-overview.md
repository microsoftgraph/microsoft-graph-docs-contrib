---
title: "Set up notifications for changes in resource data"
description: "Change notifications enable applications to receive alerts when a Microsoft Graph resource they're interested changes."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: keylimesoda
ms.topic: concept-article
ms.subservice: change-notifications
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 12/27/2024
#customer intent: As a developer, I want to receive notifications of changes to specific Microsoft Graph resources, so that I can build apps that process the changes according to the business requirements.
---

# Set up notifications for changes in resource data

Change notifications enable applications to receive alerts when a Microsoft Graph resource they're interested in changes; that is, created, updated, or deleted. Microsoft Graph sends notifications to the specified client endpoint, and the client service processes the notifications according to the business requirements. For example, the service might fetch more data, update its cache and views, and so on.

> [!IMPORTANT]
> The change notifications feature isn't supported in Microsoft Entra External ID in external tenants and Azure AD B2C tenants.

## Why get change notifications?

Change notifications follow an event-driven model where customers receive alerts when changes occur instead of them polling Microsoft Graph. Depending on your business logic, change notifications are suitable when:

- You're subscribing to a resource that changes frequently.
- You need to react to changes in near real-time.
- You want to avoid frequently polling Microsoft Graph which might cause you to hit the throttling limits.

The following image shows how change notifications works and compares with [change tracking](./delta-query-overview.md).

:::image type="content" source="images/change-notifications/change-notifications-vs-delta-query.png" alt-text="Illustration of change notifications and delta query services":::

The following video provides an overview of change notifications in Microsoft Graph.

> [!VIDEO https://www.youtube-nocookie.com/embed/rC1bunenaq4]

## Types of change notifications

Microsoft Graph supports three types of change notifications:

- **Basic notifications**: Change notifications that don't contain resource data other than the **id** of the resource that changed. When an app receives a basic notification, the service can use the **id** to query the changed object.
- **Rich notifications**: Change notifications that include the resource data of the object that changed. For more information about rich notifications, see [Rich notifications](./change-notifications-with-resource-data.md).
- **Lifecycle notifications**: Notifications that alert the customer when they are at risk of missing change notifications due to the lifecycle of their subscription. For more information about lifecycle notifications, see [Lifecycle notifications](./change-notifications-lifecycle-events.md).

## Receiving change notifications

Microsoft Graph can deliver change notifications to clients via the following channels.

- **Webhooks**. For more information, see [Receive change notifications through webhooks](./change-notifications-delivery-webhooks.md).
- **Azure Event Hubs**. For more information, see [Receive change notifications through Azure Event Hubs](./change-notifications-delivery-event-hubs.md).
- **Azure Event Grid** (preview). For more information, see [Receive change notifications through Azure Event Grid](/azure/event-grid/subscribe-to-graph-api-events?context=graph%2Fcontext).

## Managing subscriptions

Clients can create subscriptions, renew subscriptions, and delete subscriptions. While the subscription is active and when changes occur in the subscribed resource, Microsoft Graph sends change notifications to the specified notification endpoint.

You manage the subscription using the [subscription resource type](/graph/api/resources/subscription) and its related methods. Microsoft Graph sends change notifications in a structure defined in the [changeNotificationCollection resource type](/graph/api/resources/changenotificationcollection).

## Supported resources

[!INCLUDE [change-notifications-supported-resources-expanded](includes/change-notifications-supported-resources-expanded.md)]

## Subscription lifetime

Subscriptions have a limited lifetime. Apps need to renew their subscriptions before the expiration time; Otherwise, they need to create a new subscription. Apps can also unsubscribe at any time to stop getting change notifications.

The following table shows the maximum expiration times for subscriptions per resource in Microsoft Graph.

[!INCLUDE [change-notifications-subscription-lifetime](includes/change-notifications-subscription-lifetime.md)]

## Latency

[!INCLUDE [change-notifications-delivery-latency](includes/change-notifications-delivery-latency.md)]

## Code samples

The following code samples are available on GitHub.

- [Microsoft Graph Training Module - Using Change Notifications and Track Changes with Microsoft Graph](https://github.com/microsoftgraph/msgraph-training-changenotifications)
- [Microsoft Graph Webhooks Sample for Node.js](https://github.com/microsoftgraph/nodejs-webhooks-rest-sample)
- [Microsoft Graph Webhooks Sample for ASP.NET Core](https://github.com/microsoftgraph/aspnetcore-webhooks-sample)
- [Microsoft Graph Webhooks Sample for Java Spring](https://github.com/microsoftgraph/java-spring-webhooks-sample)


## Related content

- [Rich notifications (notifications with resource data)](./change-notifications-with-resource-data.md)
- [Lifecycle notifications](./change-notifications-lifecycle-events.md)
- Tutorials
    - [Change notifications for cloud printing](./universal-print-webhook-notifications.md)
    - [Change notifications for Outlook resources](./outlook-change-notifications-overview.md)
    - [Change notifications for Microsoft Teams resources](./teams-change-notification-in-microsoft-teams-overview.md)
    - [Change notifications for Copilot AI interactions](./aiinteraction-changenotifications-overview.md)


[contact]: /graph/api/resources/contact
[conversation]: /graph/api/resources/conversation
[driveItem]: /graph/api/resources/driveitem
[event]: /graph/api/resources/event
[group]: /graph/api/resources/group
[message]: /graph/api/resources/message
[user]: /graph/api/resources/user
[alert]: /graph/api/resources/alert
[callRecord]: /graph/api/resources/callrecords-callrecord
[presence]: /graph/api/resources/presence
[chatMessage]: /graph/api/resources/chatmessage
[list]: /graph/api/resources/list
[printer]: /graph/api/resources/printer
[printTaskDefinition]: /graph/api/resources/printtaskdefinition
[todoTask]: /graph/api/resources/todotask
[channel]: /graph/api/resources/channel
[chat]: /graph/api/resources/chat
[conversationMember]: /graph/api/resources/conversationmember
[team]: /graph/api/resources/team
[onlineMeeting]: /graph/api/resources/onlinemeeting
