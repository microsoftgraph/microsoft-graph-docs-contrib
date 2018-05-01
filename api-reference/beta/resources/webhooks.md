# Working with Webhooks in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Microsoft Graph REST API uses a webhook mechanism to deliver notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

Using the Microsoft Graph REST API, an app can subscribe to changes on the following resources:

* Messages
* Events
* Contacts
* Users
* Groups
* Group conversations
* Content shared on OneDrive including drives associated with SharePoint sites
* User's personal OneDrive folders

For instance, you can create a subscription to a specific mail folder:
`me/mailfolders('inbox')/messages`

Or to a top-level resource:
`me/messages`, `me/contacts`, `me/events`, `users`, or `groups`

Or to a specific object:
`users/{id}`, `groups/{id}`, `groups('{id}')/conversations`

Or to a SharePoint/OneDrive for Business drive:
`/drive/root`

Or to a user's personal OneDrive:
`/drives/{id}/root`
`/drives/{id}/root/subfolder`

After Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, it fetches more data, updates its cache and views, etc.

Apps need to renew their subscriptions before they expire, otherwise, they will need to create a new subscription. For a list of maximum expiration times, see [Maximum length of subscription per resource type](subscription.md#maximum-length-of-subscription-per-resource-type).

Apps can also unsubscribe at any time to stop getting notifications.

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription_post_subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type | Supported resource types in beta |
|:----------------|:---------------------------------|
| Delegated - work or school account | [contact](contact.md), [conversation](conversation.md), [drive](drive.md), [event](event.md), [group](group.md), [message](message.md), [user](user.md) |
| Delegated - personal Microsoft account | [contact](contact.md), [drive](drive.md), [event](event.md), [message](message.md) |
| Application | [contact](contact.md), [conversation](conversation.md), [drive](drive.md), [event](event.md), [group](group.md), [message](message.md), [user](user.md) |

## Code samples

The following code samples are available on GitHub.

* [Microsoft Graph Messages Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
* [Microsoft Graph Messages Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)
* [Microsoft Graph User Webhooks Sample using WebJobs SDK](https://github.com/microsoftgraph/webjobs-webhooks-sample)

## Creating a subscription

Creating a subscription is the first step to start receiving notifications for a resource. The subscription process is as follows:

1. The client sends a subscription (POST) request for a specific resource.
2. Microsoft Graph verifies the request.
  * If the request is valid, Microsoft Graph sends a validation token to the notification URL.
  * If the request is invalid, Microsoft Graph sends an error response with code and details.
3. The client sends the validation token back to Microsoft Graph.

The client must store the subscription ID to correlate notifications with the subscription.

## Subscription request example
This is an example of a request to create a subscription.

```
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/notificationClient",
  "resource": "/me/mailfolders('inbox')/messages",
  "expirationDateTime": "2016-03-20T11:00:00.0000000Z",
  "clientState": "SecretClientState"
}
```

The `changeType`, `notificationUrl`, `resource`, and `expirationDateTime` properties are required. See [subscription resource type](subscription.md) for property definitions and values.

Although `clientState` is not required, you should include it to comply with our recommended notification handling process. Setting this property will allow you to confirm that notifications you receive originate from the Microsoft Graph service. For this reason, the value of the property should remain secret and known only to your application and the Microsoft Graph service.

If successful, Microsoft Graph returns a `201 Created` code and a [subscription](subscription.md) object in the body.

## Notification endpoint validation

Microsoft Graph validates the notification endpoint provided in the `notificationUrl` property of the subscription request before creating the subscription. The validation process occurs as follows:

1. Microsoft Graph sends a POST request to the notification URL:

  ```
  POST https://{notificationUrl}?validationToken={TokenDefinedByMicrosoftGraph}
  clientState: {data originally provided in the clientState field of the subscription creation request (if any)}
  ```

2. The client must provide a response with the following characteristics within 10 seconds:

  * A 200 (OK) status code.
  * The content type must be text/plain.
  * The body must include the validation token provided by Microsoft Graph.

The client should discard the validation token after providing it in the response.


## Renewing a subscription

The client can renew a subscription with a specific expiration date of up to three days from the time of request. The expirationDateTime property is required.

## Subscription renewal example

```
PATCH https://graph.microsoft.com/beta/subscriptions/{id};
Content-Type: application/json
{
  "expirationDateTime": "2016-03-22T11:00:00.0000000Z"
}
```

If successful, Microsoft Graph returns a `200 OK` code and a [subscription](subscription.md) object in the body. The subscription object includes the new expirationDateTime value.

## Deleting a subscription

The client can stop receiving notifications by deleting the subscription using its ID.

```
DELETE https://graph.microsoft.com/beta/subscriptions/{id}
```

If successful, Microsoft Graph returns a `204 No Content` code.

## Notifications

The client starts receiving notifications after creating the subscription. Microsoft Graph sends a POST request to the notification URL when the resource changes. Notifications are sent only for the changes of the type specified in the subscription, for example: *created*.

## Notification properties

The notification object has the following properties:

* subscriptionId - The ID of the subscription that generated the notification.
* subscriptionExpirationDateTime - The expiration time for the subscription.
* clientState - The clientState property specified in the subscription request.
* changeType - The event type that caused the notification. For example, *created* on mail receive, or *updated* on marking a message as read.
* resource - The URI of the resource relative to `https://graph.microsoft.com`.
* resourceData - The content of this property depends on the type of resource being subscribed to.
  * @odata.type - The OData entity type in Microsoft Graph that describes the represented object.
  * @odata.id - The OData identifier of the object.
  * @odata.etag - The HTTP entity tag that represents the version of the object.
  * id - The identifier of the object.

> Note: The Id value provided in resourceData is valid at the time the notification was generated. Some actions, such as moving a message to another folder, may result in a resource's Id changing.


## Notification example

When the user receives an email, Microsoft Graph sends a notification like the following:

```
{
  "value":[
  {
    "subscriptionId":"<subscription_guid>",
    "subscriptionExpirationDateTime":"2016-03-19T22:11:09.952Z",
    "clientState":"secretClientState",
    "changeType":"created",
    "resource":"users/{user_guid}@<tenant_guid>/messages/{long_id_string}",
    "resourceData":
    {
      "@odata.type":"#Microsoft.Graph.Message",
      "@odata.id":"users/{user_guid}@<tenant_guid>/messages/{long_id_string}",
      "@odata.etag":"W/\"CQAAABYAAADkrWGo7bouTKlsgTZMr9KwAAAUWRHf\"",
      "id":"<long_id_string>"
    }
  }
  ]
}
```

Note the `value` field is an array of objects. When there are many queued notifications, Microsoft Graph may send multiple items in a single request.

## Processing the notification

Each notification received by your app should be processed; the following are the minimum tasks that your app must perform to process a notification:

1. Validate the value of the `clientState` property. It must match the value originally submitted in the subscription creation request.
  > **Note**: If this is not true, you should not consider this a valid notification. It is possible that the notification has not originated from Microsoft Graph and may have been sent by a rogue actor. You should investigate where the notification came from and take appropriate action.

2. Update your application based on your business logic.

3. Send a `202 - Accepted` status code in your response to Microsoft Graph. If Microsoft Graph doesn't receive a 2xx class code, it will retry resending the notification a number of times.
  > You should send a `202 - Accepted` status code even if the `clientState` property did not pass validation at step 1. This is a good practice as it prevents a potential rogue actor from discovering the fact that you may not trust their notifications, and perhaps using that information to guess the value of the `clientState` property.

Repeat for other notifications in the request.

## Additional resources

* [Subscription resource type](subscription.md)
* [Get subscription](../api/subscription_get.md)
* [Create subscription](../api/subscription_post_subscriptions.md)
* [Microsoft Graph Webhooks Sample for Node.js](https://github.com/OfficeDev/Microsoft-Graph-Nodejs-Webhooks)
* [Microsoft Graph Webhooks Sample for ASP.NET](https://github.com/OfficeDev/Microsoft-Graph-ASPNET-Webhooks)
