---
title: "Best practices for using Microsoft Teams activity feed notifications"
description: "This article provides best practices and examples for working with activity feed notifications in Microsoft Graph."
author: "KirtiPereira"
localization_priority: Normal
ms.prod: "teamwork"
---

# Best practices for using Microsoft Teams activity feed notifications

This article covers best practices to use Microsoft Teams activity feed notifications in Microsoft Graph.

Use the following recommendations to:

* Create call-to action notifications.
* Request for a response.
* Create notifications about an external event.

You can also [Send activity feed notifications](teams-send-activityfeednotifications.md) to users in Microsoft Teams and [Designing your Microsoft Teams app](/platform/concepts/design/design-teams-app-overview).

## General best practices

Use Microsoft Teams activity feed to send notification to users and apply the following best practices:

* Make the relationship between the notification and its content clear to the user.
    * For example, when a user receives a notification for approving a leave, selecting the notification must take them to the corresponding section of the app.
    * If the notification pertains to removal or deletion of users, tasks, and so on, direct users to the content indicating the action, so that they understand why they have been notified.
* Make sure that the feed experience in the feed is self-contained. For example, any pop-ups and modals must remain in the app and not take the user to the **Activity** feed.
* Verify that your app does not send more than 10 notifications per minute, per user. Notifications will be automatically throttled if the count exceeds 10.
* Ensure that the load time of your app does not negatively affect the experience for users when they switch between notifications in the feed.

> [!NOTE]
> Microsoft Teams displays notifications in both activity feed and toast formats.

## Recommendations for using activity feed notification API

You can select one or all the recommendations to create an effective notification.

### Prerequisites

Note the following requirements to use activity feed notifications API:
  * Toast notifications re-direct users to the activity feed, not to the app. To see another activity, users must select the proper notification in the activity feed.
  * Users can manage notification settings only after the selected app sends a notification.
  * The icon for each notification is included in the app manifest. Graph does not support customizing it.
  * Apps can only send notifications to users. Do not include Groups or teams as recipients.
  * Priority notifications are not supported.

### Recommendations

The following list provides the recomended actions:
* Localize the content in a notification toast or feed. The localization happens only if the app’s content is [localized](/platform/concepts/build-and-test/apps-localization).
* Provide appropriate titles and descriptions for your **Activity Types** as the API reads the setting titles from the app manifest: 
  * Use short titles, such as **@mention** and **Announcements**.
  * Don't use long titles, such as **User at-mentioned activity** and **Post creation activity**
* Avoid sending notifications that are promotional in nature, unless required. Notifications must convey important information for the user. For example:
  * Important message: Lynne mentioned you in a conversation.
  * Promotional message: Try the new feature in the Cycling app!
* Inform the user about the notifications storage period in the activity feed. In Microsoft Teams, the storage period is 30 days.

  > [!NOTE]
  > The 30 days storage limit applies to all notifications and it's not specific to notifications sent through the activity feed notifications API.

## Simplify the notification experience

Simplify the user's notification experience by sending only important information through notifications.

* Send directed notifications and avoid noisy messages. Users receive notifications from multiple sources across chats, channels, meetings, or other apps, therefore, don't send large volumes of non-directed notifications:
  * Relevant message: Diego assigned a sales ticket to you.
  * Irrelevant message: Joni left the sales team. *This notification may be noisy unless this is materially important.*
* Avoid duplicate notifications from bot messages and activity feed notifications. For more information, see [activity feed notifications or bot framework messages](#activity-feed-notifications-or-bot-framework-messages).
* Use the **Text Preview section** in notifications. Provide information to determine importance and take action.
* Don't add a *period* at the end of the notification title to achieve parity with all other notification settings in Teams.

## Activity feed notifications or bot framework messages

Based on the need, you can use either activity feed notifications or bot framework messages to notify users. The following tabs provide the key characteristics of activity feed notifications and bot framework messages:

### Activity feed notifications

The activity feed notifications land in the activity feed and can deep link to various locations. These notifications help you with the following: 
* Allow the user to take action or triage the notification.
* Lead the user to a tab in a chat or channel, a personal app, or a chat or channel message. 
* Directed at a user level and are not posted broadly in a channel for all channel members to see. However, if any notification is deep linked to a channel message, then it is posted broadly in a channel.

The activity feed notification API allows users to configure notifications for each **Notification type** from the app. The capability to configure, allows the user to customize a notification. The users can receive double notifications from the app. The app can send bot notifications to chats or channels and also to activity feed notifications API. *Send double notifications only if the scenario requires you to send them.* 

The activity feed notification API can send delegated or application-only calls. In delegated calls, the sender of the notification appears as the user who initiated the notification, for example, *John Doe*, and in application-only the sender appears as the app, for example, *Contoso*.
You can update an existing activity feed notification instead of creating a new notification by using the `chainId` parameter.

### Bot framework messages

Bot messages are delivered as chat or channel messages. If the users' notifications for chat or channel are turned on, they trigger notifications as chat or channel notifications:

* *@mention* the name of the user for the notification to appear in the activity feed.
* It is useful if the alert is consumed as a chat or channel message or is consumed broadly. For example, message is consumed by all channel members.
