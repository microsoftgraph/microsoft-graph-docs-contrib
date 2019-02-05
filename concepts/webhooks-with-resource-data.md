---
title: "Set up notifications for Teams messages, including message properties"
description: "The Microsoft Graph API uses a webhook mechanism to deliver notifications to clients. Notifications can include resource properties. Apps need to implement additional code to handle the requirements related to resource data being included."
author: "piotrci"
localization_priority: Priority
---

# Set up notifications for Teams messages, including message properties

The Microsoft Graph API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

After Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, it fetches more data, updates its cache and views, etc.

Subscriptions can be set up to include resource data in notifications. This allows the app to execute its business logic without the need to make additional Graph API calls to fetch the changing resource; as a result, the app makes fewer API calls and improving performance, which is especially beneficial in large scale scenarios.

However, since notfications can include sensitive customer data, the app must implement additional logic to satisfy data access and security requirements. In this article, we walk through the details, using the Team messages as an example. We focus specifically on the net new requirements specific to including resource data in notifications:

- Receiving special subscription lifecycle notifications, and responding to them to maintain an uninterrupted flow of data.
- Validating the authenticity of notifications, as having originated from Microsoft Graph.
- Decrypting resource data payload received through notifications.

## Supported resources

In Microsoft Graph API, the following resources support change notifications which include resource data:

- Teams messages (preview)

For instance, you can create a subscription to receive notifications about new or changed Teams messages in the entire organization (tenant):
@@@need correct resource path``

Or to all Teams messages in a specific tenant:
@@@need correct resource path``

## Creating a subscription

Creating a subscription for notifications that include resource data requires additional information in the request:

- @@@Name may change@@@`includeProperties` set to `true` to explicitly request resource properties.
- A `$select` operator in the resource path to select the properties to be included.
- An additional endpoint - `subscriptionLifecycleNotificationUrl` - where a new type of notifications related to subscription state will be delivered (more on this later in the article).

#### Subscription request example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "subscriptionLifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/teams/allMessages?$select=subject,body",
  @@@subject to change@@@"includeProperties": true,
  "expirationDateTime": "2019-03-20T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```

## Subscription lifecycle notifications

### @@@Set up endpoint

@@@validate

### Future-proof - we may add more @@@

### @@@Authorization challenges - responding to them.

Subscriptions have a limited lifetime. Apps need to renew their subscriptions before the expiration time. Otherwise, they need to create a new subscription. For a list of maximum expiration times, see [Maximum length of subscription per resource type](/graph/api/resources/subscription?view=graph-rest-1.0#maximum-length-of-subscription-per-resource-type).

Apps can also unsubscribe at any time to stop getting notifications.

## Validating the authenticity of notifications
@@@why
@@@what

## Descrypting resource data from notifications
@@@Mananging certificates for the app
@@@Steps to decrypt




## Code samples

The following code samples are available on GitHub.

- [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
- [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)
- [Microsoft Graph User Webhooks Sample using WebJobs SDK](https://github.com/microsoftgraph/webjobs-webhooks-sample)

## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)

[contact]: /graph/api/resources/contact?view=graph-rest-1.0
[conversation]: /graph/api/resources/conversation?view=graph-rest-1.0
[drive]: /graph/api/resources/drive?view=graph-rest-1.0
[event]: /graph/api/resources/event?view=graph-rest-1.0
[message]: /graph/api/resources/message?view=graph-rest-1.0
