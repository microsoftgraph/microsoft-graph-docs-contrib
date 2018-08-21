# notification resource type
> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a user-targeting notification that is published by an app server. The notification is stored in Microsoft Graph and is fanned out to different device endpoints owned by the user. A notification can be a visual notification payload that can be directly interpreted by different operating systems, including Windows, Android, and iOS. It can also be a data payload that's delivered to and handled by app clients, which then determine the corresponding user experience on each device – usually, a visual notification UI that corresponds to the content in the original data payload is generated locally. 
When a user acts on a visual notification, the app client can then use client-side Rome SDK to update the state of the corresponding notification feed in Microsoft Graph, for example, by marking a notification as dismissed. The update will then be fanned-out to all other app client endpoints, and the clients handle the change accordingly, for example by dismissing the notification to prevent the user from seeing any redundant information. The same notification resource can also be accessed at a later time before it expires (even after it is marked as dismissed), as notification history, by app clients through the Project Rome SDK. 

## Methods
|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create notification](../api/projectrome_post_notification.md) | [notification](projectrome_notification.md) |Create and publish a notification. |

## Properties
|Name | Type | Description|
|:----|:-----|:-----------|
| targetHostName | String | Represents the host name of the app to which the calling service wants to post the notification, for the given user. |
| appNotificationId | String | This is the unique id set by the app server of a notification that is used to identify and target an individual notification. |
| expirationDateTime | DateTimeOffset | This sets a UTC expiration time on a user notification - when time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days. |
| payload | Edm.ComplexType, JSON object | This is the data content of a raw or visual user notification that will be delivered to and consumed by the app client receiving this notification. |
| payload.rawContent | String | This is the notification content of a raw user notification that will be delivered to and consumed by the app client receiving this notification. *At least one of Payload.RawContent and Payload.VisualContent needs to be valid for a POST Notification request. |
| payload.visual | Edm.ComplexType, JSON object | This is the visual content of a visual user notification, which will be directly consumed by notification platform on each mobile platform and rendered for the users. *At least one of Content and VisualContent needs to be valid for a POST Notification request. |
| payload.visual.title | String | This is the title of a visual user notification. *Must have either title or body. |
| payload.visual.body | String | This is the body of a visual user notification. *Must have either title or body. |
| displayTimeToLive | Int | This sets how long (in seconds) this notification content will stay in each platform’s notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification will stay in user’s Windows Action Center. |
| priority | EnumType | This indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are High and Low. |
| groupName | String | This is the name of the group that this notification belongs to. It is set by the developer for the purpose of grouping notifications together. |
| targetPolicy | Edm.ComplexType, JSON object | Target policy object handles notification delivery policy at 2 different levels - endpoint types (Windows, iOS and Android) that should be targeted, and specific endpoints (identified by subscription ids) that should be targeted. |
| targetPolicy.platformTypes | Edm.ComplexType, Collection (EnumType) | Use to filter the notification fanout to a specific platform or platforms. By default, all push endpoint types (iOS, Windows, and Android) are enabled. |

## Relationships
None.

## JSON representation
Here is a JSON representation of the resource.
```json
{	
	"targetHostName": "String",
    "appNotificationId": "String",
	"expirationDateTime": "DateTimeOffset",
	"payload":  [
	{
		"rawContent": "String",
		"visual": [
			{
				"title": "String",
				"body": "String"
			}
		],
	}
],
    "displayTimeToLive": "Int",
    "priority": "Enum",
	"groupName": "String",
	"targetPolicy":  [
	{
		"platformTypes": [{ "@odata.type": "Enum" }]
	}
],
}
```

