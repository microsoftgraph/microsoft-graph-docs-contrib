# Using the notifications API in Microsoft Graph to enable human-centric notification experiences 

Notifications are the most effective way to re-engage your users, due to their ability to catch your user’s attention and bring the user back to your app. In a multi-device world, your users could be accessing your apps and services from anywhere, across different platforms and devices where your apps have a presence. 

Therefore, notification scenarios should be considered and designed in a "human-centric" way, in which the primary goal is to notify the user, wherever he or she is. The existing notification solutions provided by major platforms are excellent at targeting devices. Graph notifications, on the other hand, aim to improve that and allow you to target users. Graph notifications will take care of the heavy lifting, including mapping between users and endpoints, syncing notification state across users' different endpoints, and more. 

## Why integrate with Graph notifications?
### Deliver notifications to a user across different endpoints
As part of Microsoft Graph, notification APIs allow you to target a Microsoft account (MSA) or a school/work account (AAD) to deliver a notification. The platform fans out this notification to all their endpoints, including Windows UWP, Android, iOS. More platform and endpoint type support to come in near future. 

### Manage notifications across endpoints
Graph notifications APIs allow you to update the state of a notification and sync that state across all endpoints. For example, when a user acts on a notification on one device, we allow you to update the state of this notification (such as marking it as read or dismissed), and the same state change will be fanned-out to all other endpoints. With Graph notifications tracking the state of your users' notifications in a centralized way, it is easy to make sure your notifications are "handled once, dismissed everywhere".

### Retrieve notification history
Graph notifications APIs allow you to retrieve notification history based on an expiration time you define (up to 30 days). Notifications that are marked as read or dismissed are still retrievable from the history in order to power in-app views of notification history and other desired scenarios. 

## How to integrate with Graph notifications?

You can integrate your apps with Graph notifications with a few simple steps - onboarding your app via Windows Dev Center, using MS Graph POST API to publish notifications, and using Project Rome SDK to receive and manage notifications on your app clients.  

To learn more about how to publish a user notification via MS Graph POST API, check out [the API reference](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/api/projectrome_get_recent_activities).
 
To learn more about receiving and managing notifications by integration with the Project Rome SDK, check out [the documentations on Project Rome SDK](https://docs.microsoft.com/en-us/windows/project-rome/) 

## See also

- [Cross-device experiences in Microsoft Graph](cross-device-concept-overview.md)
- [Learn more about Project Rome](http://aka.ms/projectrome)