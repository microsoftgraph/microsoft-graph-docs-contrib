# subscription resource type
A subscription allows a client app to receive notifications about mail, events, and contacts from the Microsoft Graph.


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.subscription"
}-->

```json
{
  "changeType": "string",
  "clientState": "string",
  "notificationUrl": "string",
  "resource": "string",
  "subscriptionExpirationDateTime": "String (timestamp)",
  "subscriptionId": "string (identifier)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeType|string|Indicates the type of events that will raise a notification. The enumeration values are: Created = 1, Updated = 2, Deleted = 4, Acknowledgment = 8, Missed = 16.|
|clientState|string|Specifies the value of the ClientState header sent by the service for each notification. The maximum length is 255 characters. The client can check that the notification came from the service by comparing the value set on the ClientState property with the value of the ClientState header received with each notification.|
|notificationUrl|string|The URL of the client app that will receive the notifications.|
|resource|string|Specifies the resource that will be monitored for changes. Do not include the base URL ("http://graph.microsoft.com/beta/").|
|subscriptionExpirationDateTime|[dateTimeOffset](datetimeoffset.md)|Specifies the date and time when the notification subscription expires. The time is in UTC.|
|subscriptionId|string|Unique identifier for the subscription. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get subscription](../api/subscription_get.md) | [subscription](subscription.md) |Read properties and relationships of subscription object.|
|[Create subscription](../api/subscription_post_subscriptions.md) | [subscription](subscription.md) |Subscribes a listener application to receive notifications when mail, calendar events, or contacts change.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "subscription resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->