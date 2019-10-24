---
title: "notification resource type"
description: "Represents a notification that is published by an app server that targets a specified user. The notification is stored in Microsoft Graph and is distributed to different device endpoints owned by the user. "
localization_priority: Normal
ms.prod: "project-rome"
doc_type: resourcePageType
author: "merzink"
---

# notification resource type
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a notification that is published by an app server that targets a specified user. The notification is stored in Microsoft Graph and is distributed to different device endpoints owned by the user. 

A notification can be a visual notification payload that can be interpreted by the operating system (Windows, Android, and iOS platforms). It can also be a data payload (rawContent) that's delivered to and handled by app clients (including web), which then determine the corresponding user experience on each device.  This is usually a visual notification UI, generated locally, that corresponds to the content in the original data payload. 

When a user acts on a visual notification, the app client can then use client-side notifications SDK to update the state of the corresponding notification feed in the Microsoft Graph - for example, by marking a notification as dismissed. The update will then be distributed to all other app client endpoints, and the clients handle the change accordingly, for example by dismissing the notification to prevent the user from seeing redundant information. App clients can access the same notification resource at a later time before it expires (even after it is marked as dismissed), as notification history, via the [notification SDK](https://aka.ms/GNSDK). 

> [!NOTE]
> Notification state updates, such as read or dismissed, will not be fanned out to web endpoints.  This is because webpush across various browsers require visual toast notifications to be displayed to a user.  Since state changes have no corresponding visual content, state changes will only be fanned-out for notifications targeted to the Windows, iOS or Android platforms.


## Methods
|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create notification](../api/notifications-post.md) | [notification](projectrome-notification.md) |Create and send a notification. |

## Properties
|Name | Type | Description|
|:----|:-----|:-----------|
| targetHostName | String | Represents the host name of the app to which the calling service wants to post the notification, for the given user. If targeting web endpoints only (see targetPolicy.platformTypes below), targetHostName can simply be set to "webApp". |
| appNotificationId | String | The unique id set by the app server of a notification that is used to identify and target an individual notification. |
| expirationDateTime | DateTimeOffset | Sets a UTC expiration time on a user notification - when time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days. |
| payload | Edm.ComplexType, JSON object | This is the data content of a raw or visual user notification that will be delivered to and consumed by the app client receiving this notification. |
| payload.rawContent | String | The notification content of a raw user notification that will be delivered to and consumed by the app client on all supported platforms (Windows, iOS, Android or WebPush) receiving this notification. At least one of Payload.RawContent or Payload.VisualContent needs to be valid for a POST Notification request. |
| payload.visual | Edm.ComplexType, JSON object | The visual content of a visual user notification, which will be consumed by the notification platform on each supported platform (Windows, iOS and Android only) and rendered for the user. At least one of Payload.RawContent or Payload.VisualContent needs to be valid for a POST Notification request. |
| payload.visual.title | String | The title of a visual user notification. This field is required for visual notification payloads. |
| payload.visual.body | String | The body of a visual user notification. Body is optional. |
| displayTimeToLive | Int | Sets how long (in seconds) this notification content will stay in each platform’s notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification will stay in the user’s Windows Action Center. |
| priority | EnumType | Indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are "High" and "Low". |
| groupName | String | The name of the group that this notification belongs to. It is set by the developer for the purpose of grouping notifications together. |
| targetPolicy | Edm.ComplexType, JSON object | Target policy object handles notification delivery policy for endpoint types that should be targeted (Windows, iOS, Android and WebPush) for the given user. |
| targetPolicy.platformTypes | Edm.ComplexType, Collection (EnumType) | Use to filter the notification distribution to a specific platform or platforms. Valid values are "Windows", "iOS", "Android" and "WebPush". By default, all push endpoint types (Windows, iOS, Android and WebPush) are enabled. |
| fallbackPolicy | Edm.ComplexType, JSON object | Optional fallback policy object handles notification fallback policy for iOS endpoints only and is designed to be used for high-priority raw notifications that might not be delivered to devices due to platform specific restrictions (e.g. battery saver mode). |   
| fallbackPolicy.endpointFallback | Edm.ComplexType, JSON object | EndpointFallback policy object handles notification fallback policy at an end point level and is currently limited to iOS. |   
| fallbackPolicy.endpointFallback.platformTypes | String | This specifies the platforms that a developer wants to enable raw-to-visual toast notification fallback on. Currently, if fallbackPolicy is specified, targetPolicy.platformTypes must include "iOS" and optionally other platforms.  Additionally, fallbackPolicy.endpointFallback.platformTypes is required and the only supported platform is currently "iOS". |
| fallbackPolicy.endpointFallback.FallbackDelayInSeconds | Int | This delay represents the amount of time that will pass (in seconds) before a direct toast notification will be sent as a fallback to each users’ iOS device subscription that does not fetch the raw notification. The value must be between 60 and 600. |
| fallbackPolicy.endpointFallback.visual | Edm.ComplexType, JSON object | The visual content of a fallback initiated raw-to-visual user notification on iOS. |
| fallbackPolicy.endpointFallback.visual.title | String | The title of a fallback initiated visual user notification. Title is a required field. |
| fallbackPolicy.endpointFallback.visual.body | String | The body of a fallback initiated visual user notification. Body of a visual notification is optional. |



## Relationships
None.


## JSON representation
The following is a JSON representation of the resource when you publish a direct visual notification that is delivered to the destination operating system.

```json
{	
  "targetHostName": "String",
  "appNotificationId": "String",
  "expirationDateTime": "DateTimeOffset",
  "payload":  
  {
    "visualContent": 
    {
      "title": "String",
      "body": "String"
    },
  },
  "displayTimeToLive": "Int",
  "priority": "Enum",
  "groupName": "String",
  "targetPolicy":
  {
    "platformTypes": [ 
      "Enum"
    ]
  }
}
```

The following is a JSON representation of the resource when you publish a raw data notification that is delivered to app clients.
```json
{	
  "targetHostName": "String",
  "appNotificationId": "String",
  "expirationDateTime": "DateTimeOffset",
  "payload":  
  {
    "rawContent": "String"
  },
  "priority": "Enum",
  "groupName": "String",
  "targetPolicy":
  {
    "platformTypes": [ 
      "Enum"
    ]
  }
}
```
The following is a JSON representation of the resource when you publish a raw data notification with a fallback policy specified for a high-priority, raw-to visual notification (guaranteed delivery) on iOS.
```json
{	
  "targetHostName": "String",
  "appNotificationId": "String",
  "expirationDateTime": "DateTimeOffset",
  "payload":  
  {
    "rawContent": "String"
  },
  "targetPolicy":
  {
    "platformTypes": [ 
      "Enum"
    ]
  }
  "FallbackPolicy": 
  {    
    "EndpointFallback": { 
      "platformTypes": "iOS",
      "fallbackDelayInSeconds":"Int",
      "visualContent": {            
        "title":"String",
        "body":"String"
		},
	  }
  }
  "displayTimeToLive": "Int",
  "priority": "Enum",
  "groupName": "String",
}
```
