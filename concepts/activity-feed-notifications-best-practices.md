---
title: "Best practices for Activity Feed Notification in Microsoft Graph"
description: "List best practices and examples for Activity Feed Notification in Microsoft Graph"
ms.author: "lajanuar"
localization_priority: Normal
ms.prod: "notifications"
---

# Best practices for activity feed notifications
This document consolidates the best practices that you are expected to adhere to, as you build experiences using the activity feed notifications across visual elements and notification behavior.

At a high-level the best practices are as follows:
* [Ensure that partner scenarios respect the activity feed guidelines](#activity-feed-notifications-partner-scenarios).
* [Ensure that expectations in terms of performance are met](#minimize-noise-and-build-high-quality-notification-experiences).
* [Ensure that you use the activity feed notifications and other bot *notification* tools as required](#use-bot-framework-and-activity-feed-notifications).


## Activity feed notifications partner scenarios
The **Activity Feed Notification** is a platform that enables partner apps to send notifications to users. These notifications are sent as toast items and activity feed items that point users to relevant content that can be consumed within Teams. 
Following is the list of best practices:
* Understand the direct relationship between a notification toast or feed, and the content it is deep linked to.
    * The notification must not confuse the user about what they need to address or triage. For example, if an *@mention* notification is received, the panel on the right in the activity feed app must display or reference the corresponding *@mention*.
    * If the notification pertains to removal or deletion of scenarios, direct users to the content indicating the action, so that they understand the outcome before taking action. For example, remove a user from a group or delete a list.
* Ensure that the right pane experience in the feed is self-contained and does not break the feed experience. For example, if the notification leads to a modal or pop-up dialog, the modal must exist only within the app and not over the activity feed experience.
* Ensure that apps are not sending more than 10 notifications per minute, per user.
  > [!NOTE]
  > Notifications are throttled if the per user notification count exceeds the limit.
* Ensure that the apps are performing. The time taken for an app to load is measured and can impact the user experience when a user switches between notifications in the activity feed.

### Utilize features in partner scenarios
* Understand that selecting a toast notification leads to the activity feed. To switch to an activity, select a notification in the activity feed.
  > [!NOTE] 
  > The notification selection will not switch to the app.
* Ensure that you localize the content in a notification toast or feed. The localization happens only if the app’s content is [localized](/platform/concepts/build-and-test/apps-localization).<br/> ![Screenshot of App level settings](../concepts/images/notifications-api-best-practice1.png)
* Ensure that you provide appropriate titles and descriptions for your **Activity Types**, since the setting titles are read from the app manifest. For example:<br/><br/>![Screenshot of correct Activity Types](../concepts/images/notifications-api-best-practice2.png)<br/><br/><br/>![Screenshot of incorrect Activity Types](../concepts/images/notifications-api-best-practice3.png)
* Ensure that the notifications are not promotional in nature. They must convey something important that the user must be aware about. For example:<br/>*Try the new feature in the Cycling app!* ❌<br/>*Lynne mentioned you in a message.* ✔
* Understand that the setting appears only when the selected app sends a notification.
* Understand that the app cannot be customized. For example, every notification from an app has the same icon, as included in the app manifest.
* Understand that currently, notifications can only be sent at a user level and not at a group or a team level.
  > [!NOTE]
  > Currently, priority notifications are not supported.
* Inform the user that the notifications are stored in the activity feed for 30 days. 
  > [!NOTE]
  > The 30 days storage limit applies to all notifications and is not specific to notifications sent through the activity feed notifications API.

## Minimize noise and build high quality notification experiences
* Improve chances of users acting on your notifications by sending relevant notifications directly. Users receive notifications from multiple sources across chats, channels, meetings, or other apps, therefore, do not send large volume of non-directed notifications. For example:</br> *Joni left the sales team.* ❌ - This notification may be noisy unless this is materially important.<br/>*Diego assigned a sales ticket to you.* ✔
* Avoid duplicate notifications from bot messages and activity feed notifications. See [best practices to use the bot framework and activity feed notifications](#use-bot-framework-and-activity-feed-notifications).
* Utilize the third line for the preview to give users information that allows them to gauge the importance and take action. Select a toast or mark for follow-up.

  ![Notification text preview](../concepts/images/notification-preview.png)
* Ensure there is no *period* at the end of the notification title to achieve parity with all other notification settings in Teams.

## Use bot framework and activity feed notifications

* Understand that bot messages are delivered as chat or channel messages 
    * The bot messages trigger notifications as chat or channel notifications if the user's notifications for chat or channel is turned on.
    * You must *@mention* the name of the user for the notification to appear in the activity feed. 
    * Bot messages are useful if the alert is consumed as a chat or channel message or is consumed broadly. For example, message is consumed by all channel members.
* Understand that the activity feed notification API notifications land in the activity feed and can deep link to various locations.
    * Notifications land in the activity feed, which allows the user to take action or triage the notification.
    * Notifications lead the user to a tab in a chat or channel, a personal app, or a chat or channel message.
    * Activity feed notifications are currently directed at a user level and are not posted broadly in a channel for all channel members to see. However, if the notification is deep linked to a channel message, then it is posted broadly in a channel.
* Understand that the activity feed notification API allows users to configure notifications for each **Notification type** from the app. The capability to configure a notification allows the user to turn on or turn off specific notifications.
* Understand that users can receive double notifications from the app. The app can send bot notifications to chats or channels and also activity feed notifications API notifications.
   > [!NOTE]
   > Send double notifications only if the scenario requires you to send them.
* Understand that the activity feed notification API allows notifications in app or user context.
* Understand that you can update an existing notification instead of creating a new notification.

## See also
* [Send activity feed notifications](teams-send-activityfeednotifications.md)
* [Designing your Microsoft Teams app](/platform/concepts/design/design-teams-app-overview)
