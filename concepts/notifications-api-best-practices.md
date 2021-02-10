---
title: "Best practices for Notification APIs in Microsoft Graph"
description: "List best practices and examples for Notification APIs in Microsoft Graph"
author: "merzink"
localization_priority: Normal
ms.prod: "notification"
---

# Best practices for working with the Notification API in Microsoft Graph
This document consolidates the best practices that the Microsoft partners are expected to adhere to, as they build experiences using the Notification API, across visual elements and notification behavior. These practices cover aspects needed for 1P, 2P, and 3P partners. - clarification from Nikhit - do we need to elaborate on 1P, 2P, and 3P? What they stand for?

Document links - Clarification about the document links to be checked with Nikhit.	
	
## List of best practices
The following list provides an overview of the best practices for Notification API:

* Partner scenarios must respect the Activity Feed guidelines.
* Trade-offs between the Notification API and other bot ‘notification’ tools. - need clarification from Nikhit on this point
* Expectations in terms of performance and similar considerations. - need clarification from Nikhit on this point 

## Notification API Scenarios
The Notification API is a platform that enables partner apps to send notifications to users as toast items and activity feed items that point users to relevant content that can be consumed within Teams.

Following are the core expectations and requirements for partners using the Notification API:

|**No.**|**Requirement**|**PRI** - what is the fullform of PRI?|
|-------|---------------|------------------------|	
|**1**|Direct relationship  between a notification (toast or feed) and the content deeplinked to|1|
||For example, if an @mention notification is received, the panel on the right in the activity feed (app) should display or reference the corresponding @mention; users must not be confused about what they need to address/triage|1|
||If the notification pertains to removal or deletion of scenarios, the user must be directed to content indicating this so that the user understands the outcome before taking action. For example, removal from a group or deletion of a list.|1|
|**2**|	The right pane experience in the feed is self-contained and does not break the feed experience.|1|
||Any notification in the activity feed is one among many, the right pane experience must be self contained to the pane, to allow the user to switch to another item or triage the item in the feed.|1|	
||	For example, if the notification leads to a modal or pop-up dialog, the modal must exist only within the app and not over the activity feed experience.| 1|
|**3**| Apps cannot send more than 10 notifications per minute, per user.|1|
||	Notifications will be throttled if the per-user notification count exceeds the limit.|1|
|4|	Partners must ensure apps are performing. The time it takes for an app to load is measured and can impact the user experience when a user switches between notifications in the Activity Feed.|1|
|| Notifications may be turned off if a partner’s notifications adversely regress Activity Switch times. *More information will be published in the forthcoming release.*| 1|

## Additional guidelines and feature behavior 	
|**No.**|**Requirement**|
|-------|---------------|
|**1**|	Selecting a toast notification will lead to the activity feed, selecting a notification in the activity feed will switch to the activity within the activity feed, it will not switch to the app.|
|**2**|	Content in a notification toast or feed will be localized only if the app’s content has been localized. (link to be added to localized.)|
|**3**|	Settings are created based on the **Activity Types** defined in the app manifest, the setting titles that are read from the description field must be named appropriately to convey what setting will be affected. For example:<br/> ✔ (image to be added)<br/><br/>❌ (image to be added)|
|**4**|	Notifications must not be promotional, they must convey something important that the user must be aware about. For example:<br/>*Try the new feature in the Cycling app!* ❌<br/>*Lynne mentioned you in a message.* ✔|
|**5**| Users will see notification settings for an app only when a notification is received from the app in question.|
|**6**|	Icons cannot be currently customized, every notification from an app will have the same icon [except for 1P apps] - clarification required from Nihit - can we provide example of 1P apps?|
|**7**|	Notifications can be sent at a user level but not a group or team level as of now. Priority notifications cannot be sent. - clarification required from Nihit- priority notifications cannot be sent at any level or only specific level?|
|**8**|	Notifications are stored in the activity feed for 30 days. <br/>*The 30 days storage limit applies to all notifications and is not specific to Notification API.*|

## Best practices to minimize noise and build high quality notification experiences
|**No.**|**Requirement**|**PRI**|
|-------|---------------|-------|
|**1**| Users receive notifications from multiple sources across chats, channels, meetings, or other apps. To improve the likelihood of your notifications being acted upon, avoid a large volume of non-directed broadcast notifications instead of notifications directly relevant to the user:</br> *Joni left the sales team.* - This notification may be noisy unless this is materially important.<br/>*Diego assigned a sales ticket to you* ✔|	1|
|**2**|	Avoid duplicate notifications from bot messages and the Notification API. See the [Best practices to use the bot framework and Notification API]() table:|	1|
|**3**|	Utilize the third line for the preview to give users information that allows users to take gauge importance and action. Select a toast or mark for follow-up.|	1|
|**4**|	Avoid full stops at the end of the notification title, to achieve parity with all other notifications in Teams.|1|

## Best practices to use the bot framework and the Notification API
|**No.**|**Requirement**|
|-------|---------------|
|**1**|	Bot messages are delivered as chat or channel messages.| 
||	If a user has chat or channel notifications turned on, they will receive a notification alerting the user to a message in a chat or channel.|
||	These notifications will not appear in the Activity Feed (unless @mentioned).| 
|| Such bot messages are useful when the alert is best consumed as a chat or channel message or if the information is meant to be consumed broadly. For example, by all channel members.|
|**2**|	Notification API notifications land in the Activity Feed and can deeplink to various locations.|
||Notifications land in the Activity Feed, allowing the user to take action or triage this notification.|
||The notification can lead the user to a tab in a chat or channel, a personal app, or a chat or channel message.|
||Such notifications are directed at a user level (at this time) and are not posted broadly in a channel for all channel members to see (unless the notification deeplinks to a channel message).|
|**3**|	The Notification API allows users to configure notifications for each notification type from the app.|
||This granularity empowers users to turn on or turn off specific notifications.|
|**4**|	If an app sends to chats or channels and sends Notification API notifications, there is a risk of users receiving double notifications and it is not recommended unless the scenario demands it.|

