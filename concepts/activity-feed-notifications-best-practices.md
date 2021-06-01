---
title: "Best practices for using Microsoft Teams activity feed notifications"
description: "This article provides best practices and examples for working with activity feed notifications in Microsoft Graph."
author: "KirtiPereira"
localization_priority: Normal
ms.prod: "teamwork"
---

# Best practices for using Microsoft Teams activity feed notifications

This article covers best practices to help you build experiences using Microsoft Teams activity feed notifications in Microsoft Graph. These best practices help you to create notifications as per the scenario, such as notifications for first run experience, request for response or action, or external event notifications. You can also [Send activity feed notifications](teams-send-activityfeednotifications.md) to users in Microsoft Teams and [Designing your Microsoft Teams app](/platform/concepts/design/design-teams-app-overview)

## General best practices

Activity feed notifications enable your apps to send notifications to users. These notifications are sent as toast items and activity feed items that point users to relevant content that can be consumed within Teams. Apply the following best practices in your app:

* Make the relationship between the notification and its content clear to the user.
    * For example, when a user receives a notification for approving a leave, selecting the notification must take them to the corresponding section of the app.
    * If the notification pertains to removal or deletion of users, tasks, and so on, direct users to the content indicating the action, so that they understand why they have been notified.
* Make sure that the feed experience in the feed is self-contained and does not break the feed experience. For instance any pop-ups and modals must remain in the app and never take the user to the **Activity** feed.
* Verify that your app does not send more than 10 notifications per minute, per user. Notifications are throttled if the per user notification count exceeds 10.
* Ensure that the load time of your app does not negatively affect the experience for users when they switch between notifications in the feed.

## Recommendations for using activity feed notification API

You can select one or all the recommendations to create an effective notification.

### Prerequisites

The requirements to use the activity feed notification API, are as follows:
  * The toast notifications re-direct users to the activity feed and not to the app. To see another activity, users must select the proper notification in the activity feed.
  * The users can manage notification settings only after the selected app sends a notification.
  * The icon for each notification is included in the app manifest. Graph does not support customizing it.
  * Apps can only send notifications to users. Do not include Groups or teams as recipients.
  * At present, the priority notifications are not supported.

### Recommendations

The following list provides the recomended actions:
* Localize the content in a notification toast or feed. The localization happens only if the app’s content is [localized](/platform/concepts/build-and-test/apps-localization).
* Provide appropriate titles and descriptions for your **Activity Types** as the API reads the setting titles from the app manifest. The following list provides examples of appropriate and inappropriate titles and descriptions:
  * Use short titles, such as **@mention** and **Announcements**.
  * Do not use long titles, such as **User at-mentioned activity** and **Post creation activity**
* Avoid sending notifications that are promotional in nature unless required. The notification must convey something important that the user must be aware about. The following list provides an example of important and promotional messages:
 * Important message: Lynne mentioned you in a conversation.
 * Promotional message: Try the new feature in the Cycling app!

* Notify the user that the notifications are stored in the activity feed for 30 days. 

  > [!NOTE]
  > The 30 days storage limit applies to all notifications and is not specific to notifications sent through the activity feed notifications API.

## Simplify the notification experience

Simplify the user's notification experience by sending only important information through notifications.

* Improve chances of users acting on your notifications by sending relevant notifications directly. Users receive notifications from multiple sources across chats, channels, meetings, or other apps, therefore, do not send large volume of non-directed notifications. The following list provides examples of relevant and irrelevant messages:

 * Relevant message: Diego assigned a sales ticket to you.
 * Irrelevant message: Joni left the sales team. *This notification may be noisy unless this is materially important.
* Avoid duplicate notifications from bot messages and activity feed notifications. For more information, see [difference between bot framework messages and activity feed notifications](#difference-between-bot-framework-messages-and-activity-feed-notifications).
* Use the third-lines in previews and provide information to determine importance and take action.Use the **Text Preview section** in notifications. Provide information to determine importance and take action.
* Do not add a *period* at the end of the notification title to achieve parity with all other notification settings in Teams.

## Characteristics of activity feed notifications and bot framework messages

Based on the need, the user can either use activity feed notifications or bot framework messages to notify the user. The following tabs provide the key characteristics of activity feed notifications and bot framework messages:

 # [Activity feed notifications](#tab/activityfeednotifications)

The activity feed notifications land in the activity feed and can deep link to various locations. These notifications: 
* allow the user to take action or triage the notification.
* lead the user to a tab in a chat or channel, a personal app, or a chat or channel message. 
* are currently directed at a user level and are not posted broadly in a channel for all channel members to see. However, if the notification is deep linked to a channel message, then it is posted broadly in a channel.
The activity feed notification API allows users to configure notifications for each **Notification type** from the app. The capability to configure a notification allows the user to customize. The users can receive double notifications from the app. The app can send bot notifications to chats or channels and also activity feed notifications API notifications. *Send double notifications only if the scenario requires you to send them.* 
The activity feed notification API can send delegated or application-only calls. In delegated calls, the sender of the notification appears as the user who initiated the notification, for example, *John Doe*, and in application-only the sender appears as the app, for example, *Contoso*.
You can update an existing activity feed notification instead of creating a new notification by using the `chainId` parameter.

# [Bot framework messages ](#tab/botframeworkmessages)

 Bot messages are delivered as chat or channel messages. If the user's notifications for chat or channel is turned on, they trigger notifications as chat or channel notifications.
* *@mention* the name of the user for the notification to appear in the activity feed.
* It is useful if the alert is consumed as a chat or channel message or is consumed broadly. For example, message is consumed by all channel members
