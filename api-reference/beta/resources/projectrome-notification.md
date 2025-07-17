---
title: notification resource type (deprecated)
description: 'Represents a notification that is published by an app server that targets a specified user. The notification is stored in Microsoft Graph and is distributed to different device endpoints owned by the user. '
ms.localizationpriority: medium
ms.subservice: notifications
doc_type: resourcePageType
author: merzink
ms.date: 05/23/2024
---

# notification resource type (deprecated)

Namespace: microsoft.graph

> [!IMPORTANT]
> The Microsoft Graph notifications API is deprecated and will stop returning data by the end of January 2022. For an alternative notification experience, see [Microsoft Azure Notification Hubs](/azure/notification-hubs), and [see this blog post](https://devblogs.microsoft.com/microsoft365dev/retiring-microsoft-graph-notifications/) for more information.

Represents a notification that is published by an app server that targets a specified user. The notification is stored in Microsoft Graph and is distributed to different device endpoints owned by the user. 

A notification can be a visual notification payload that can be interpreted by the operating system (Windows, Android, and iOS platforms). It can also be a data payload (rawContent) that's delivered to and handled by app clients (including web), which then determine the corresponding user experience on each device.  This is usually a visual notification UI, generated locally, that corresponds to the content in the original data payload. 

When a user acts on a visual notification, the app client can then use the client-side notifications SDK to update the state of the corresponding notification feed in Microsoft Graph - for example, by marking a notification as dismissed. The update will then be distributed to all other app client endpoints, and the clients handle the change accordingly, for example by dismissing the notification to prevent the user from seeing redundant information. App clients can access the same notification resource at a later time before it expires (even after it is marked as dismissed), as notification history, via the [notification SDK](https://aka.ms/GNSDK). 

> [!NOTE]
> Notification state updates, such as read or dismissed, will not be fanned out to web endpoints. This is because web pushes across various browsers require visual toast notifications to be displayed to a user. Because state changes have no corresponding visual content, they will only be fanned-out for notifications targeting Windows, iOS, or Android platforms.

## Methods

| Method                                                   | Return Type                                 | Description                     |
| :------------------------------------------------------- | :------------------------------------------ | :------------------------------ |
| [Create and send a notification (deprecated)](../api/user-post-notifications.md) | [notification](projectrome-notification.md) | Create and send a notification. |

## Properties

| Property           | Type                                              | Description                                                                                                                                                                                                                                                                                                                                               |
| :----------------- | :------------------------------------------------ | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| targetHostName     | String                                            | Represents the host name of the app to which the calling service wants to post the notification, for the given user. If targeting web endpoints (see **targetPolicy.platformTypes**), ensure that **targetHostName** is the same as the name used when creating a subscription on the client side within the application JSON property.                   |
| appNotificationId  | String                                            | The unique ID set by the app server of a notification that is used to identify and target an individual notification.                                                                                                                                                                                                                                     |
| groupName          | String                                            | The name of the group that this notification belongs to. It is set by the developer for grouping notifications together.                                                                                                                                                                                                                   |
| targetPolicy       | [targetPolicyEndpoints](targetpolicyendpoints.md) | Target policy object handles notification delivery policy for endpoint types that should be targeted (Windows, iOS, Android and WebPush) for the given user.                                                                                                                                                                                              |
| payload            | [payloadTypes](payloadtypes.md)                   | This is the data content of a raw or visual user notification that will be delivered to and consumed by the app client receiving this notification.                                                                                                                                                                                                       |
| displayTimeToLive  | Int32                                             | Sets how long (in seconds) this notification content stays in each platform's notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification stays in the user's Windows Action Center.  |
| expirationDateTime | DateTimeOffset                                    | Sets a UTC expiration date and time on a user notification using ISO 8601 format (for example, midnight UTC on Jan 1, 2019 would look like this: `'2019-01-01T00:00:00Z'`). When time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days. |
| priority           | string                                            | Indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are `None`, `High` and `Low`.                                                                                                                                                                                                |
| fallbackPolicy     | [fallbackpolicy](fallbackpolicy.md)               | Optional fallback policy object handles notification fallback policy for iOS endpoints only and is designed to be used for high-priority raw notifications that might not be delivered to devices due to platform specific restrictions (for example battery saver mode).                                                                                        |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.notification",
  "keyProperty": "id"
}-->

```json
{
  "targetHostName": "String",
  "appNotificationId": "String (identifier)",
  "groupName": "String", 
  "targetPolicy": {"@odata.type": "microsoft.graph.targetPolicyEndpoints"},
  "payload": {"@odata.type": "microsoft.graph.payloadTypes"},
  "displayTimeToLive": 1024,
  "expirationDateTime": "String (timestamp)",
  "priority": "string",
  "fallbackPolicy": {"@odata.type": "microsoft.graph.fallbackpolicy"} 
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->

<!-- {
  "type": "#page.annotation",
  "description": "notification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
