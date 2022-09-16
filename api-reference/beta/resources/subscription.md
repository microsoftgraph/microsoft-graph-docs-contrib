---
title: "subscription resource type"
description: "A subscription allows a client app to receive change notifications about changes to data in Microsoft Graph. Currently, subscriptions are enabled for the following resources:"
ms.localizationpriority: medium
author: "jumasure"
doc_type: resourcePageType
ms.prod: "change-notifications"

---

# subscription resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

A subscription allows a client app to receive change notifications about changes to data in Microsoft Graph. Currently, subscriptions are enabled for the following resources.

> **Note** Subscriptions marked with an asterisk (*) are supported in the `/beta` endpoint only.

- An [alert][] from the Microsoft Graph Security API.
- A [baseTask][] (deprecated) of a user in Microsoft To Do.*
- A [callRecord][] produced after a call or meeting in Microsoft Teams.
- A [channel](./channel.md) in Microsoft Teams.
- A [chat](./chat.md) in Microsoft Teams.
- A [chatMessage][] sent via teams or channels in Microsoft Teams.
- A [conversation][] in a Microsoft 365 group.
- A [conversationMember](./conversationmember.md) in a team, channel, or chat in Microsoft Teams.
- Content in the hierarchy of a root folder [driveItem][] in OneDrive for Business, or of a root folder or subfolder [driveItem][] in a user's personal OneDrive.
- A [group][] in Azure Active Directory.
- A [list][] under a SharePoint [site][].
- A [message][], [event][], or [contact][] in Outlook.
- An [online meeting][] in Microsoft Teams.*
- The [presence][] of a user in Microsoft Teams.*
- A [team](./team.md) in Microsoft Teams.
- A [printer][] (when a print job for the printer gets to JobFetchable state - ready to be fetched for printing) and a [printTaskDefinition][] in Universal Print. For more information, see [Subscribe to change notifications from cloud printing APIs](/graph/universal-print-webhook-notifications).
- A [todoTask][] of a user in Microsoft To Do.
- A [user][] in Azure Active Directory.

For the possible resource path values for each supported resource, see [Use the Microsoft Graph API to get change notifications](webhooks.md). To learn how to use lifecycle notifications, see [Reduce missing subscriptions and change notifications](/graph/webhooks-lifecycle).

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [Create subscription](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Subscribes a listener application to receive change notifications when Microsoft Graph data changes. |
| [Update subscription](../api/subscription-update.md) | [subscription](subscription.md) | Renew a subscription by updating its expiration time. |
| [List subscriptions](../api/subscription-list.md) | [subscription](subscription.md) | Lists active subscriptions. |
| [Get subscription](../api/subscription-get.md) | [subscription](subscription.md) | Read properties and relationships of subscription object. |
| [Delete subscription](../api/subscription-delete.md) | None | Delete a subscription object. |

## Properties

| Property | Type | Description | Supported Resources |
|:---------|:-----|:------------|:--------------|
| applicationId | String | Optional. Identifier of the application used to create the subscription. Read-only.  | All |
| changeType | String | Required. Indicates the type of change in the subscribed resource that will raise a change notification. The supported values are: `created`, `updated`, `deleted`. Multiple values can be combined using a comma-separated list. <br><br>**Note:** <li> Drive root item and list change notifications support only the `updated` changeType. <li>[User](../resources/user.md) and [group](../resources/user.md) change notifications support `updated` and `deleted` changeType. | All |
| clientState | String | Optional. Specifies the value of the **clientState** property sent by the service in each change notification. The maximum length is 255 characters. The client can check that the change notification came from the service by comparing the value of the **clientState** property sent with the subscription with the value of the **clientState** property received with each change notification. | All |
| creatorId | String | Optional. Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the ID of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the ID of the service principal corresponding to the app. Read-only. | All |
| encryptionCertificate | String | Optional. A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional but required when **includeResourceData** is `true`. | All |
| encryptionCertificateId | String | Optional. A custom app-provided identifier to help identify the certificate needed to decrypt resource data. Required when **includeResourceData** is `true`. | All |
| expirationDateTime | DateTimeOffset | Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to. For the maximum supported subscription length of time, see [the table below](#maximum-length-of-subscription-per-resource-type).  | All |
| id | String | Optional. Unique identifier for the subscription. Read-only. | All |
| includeResourceData | Boolean | Optional. When set to `true`, change notifications [include resource data](/graph/webhooks-with-resource-data) (such as content of a chat message). | All |
| latestSupportedTlsVersion | String | Optional. Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by **notificationUrl**, supports. The possible values are: `v1_0`, `v1_1`, `v1_2`, `v1_3`. </br></br>For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set [timeline](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. </br></br>For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to `v1_2`. | All |
| lifecycleNotificationUrl | String | Optional. The URL of the endpoint that receives lifecycle notifications, including `subscriptionRemoved` and `missed` notifications. This URL must make use of the HTTPS protocol. | All |
| notificationContentType | String | Optional. Desired **content-type** for Microsoft Graph change notifications for supported resource types. The default content-type is `application/json`. | All |
| notificationQueryOptions | String |Optional.  OData query options for specifying the value for the targeting resource. Clients receive notifications when the resource reaches the state matching the query options provided here. With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the **notificationQueryOptions** property. For example, when the print job is completed or when a print job resource `isFetchable` property value becomes `true` etc. | [Universal Print Service](/graph/universal-print-webhook-notifications) |
| notificationUrl | String | Required. The URL of the endpoint that receives the change notifications. This URL must make use of the HTTPS protocol.  | All |
| notificationUrlAppId| String | Optional. The app ID that the subscription service can use to generate the validation token. This allows the client to validate the authenticity of the notification received.  | All |
| resource | String | Required. Specifies the resource that will be monitored for changes. Do not include the base URL (`https://graph.microsoft.com/beta/`). See the possible resource path [values](webhooks.md) for each supported resource.  | All |

### Maximum length of subscription per resource type

| Resource            | Maximum expiration time  |
|:--------------------|:-------------------------|
| Security **alert**     | 43200 minutes (under 30 days)  |
| Teams **callRecord**    | 4230 minutes (under 3 days)  |
| Teams **channel**    | 60 minutes (1 hour)  |
| Teams **chat** | 60 minutes (1 hour) |
| Teams **chatMessage**    | 60 minutes (1 hour)  |
| Teams **conversationMember**    | 60 minutes (1 hour)  |
| Teams **onlineMeeting** | 4320 minutes (3 days) |
| Teams **team**    | 60 minutes (1 hour)  |
| Group **conversation** | 4230 minutes (under 3 days)    |
| OneDrive **driveItem**    | 42300 minutes (under 30 days)    |
| SharePoint **list**    | 42300 minutes (under 30 days)    |
| Outlook **message**, **event**, **contact**              | 4230 minutes (under 3 days)    |
| **user**, **group**, other directory resources   | 41760 minutes (under 29 days)    |
| **onlineMeeting** | 4230 minutes (under 3 days) |
| **presence**        | 60 minutes (1 hour) |
| Print **printer** | 4230 minutes (under 3 days)    |
| Print **printTaskDefinition** | 4230 minutes (under 3 days)    |
| **todoTask**              | 4230 minutes (under 3 days)    |
| **baseTask** (deprecated) | 4230 minutes (under 3 days)    |


> **Note:** Existing applications and new applications should not exceed the supported value. In the future, any requests to create or renew a subscription beyond the maximum value will fail.

## Relationships

None.

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.subscription",
  "@odata.annotations": [
    {
      "capabilities": {
        "skippable": false,
        "toppable": false,
        "countable": false,
        "expandable": false,
        "filterable": false,
        "referenceable": false,
        "selectable": false,
        "sortable": false
      }
    }
  ]
}-->

``` json
{
  "@odata.type": "#microsoft.graph.subscription",
  "id": "String (identifier)",
  "resource": "String",
  "changeType": "String",
  "clientState": "String",
  "notificationUrl": "String",
  "expirationDateTime": "String (timestamp)",
  "applicationId": "String",
  "creatorId": "String",
  "includeResourceData": "Boolean",
  "lifecycleNotificationUrl": "String",
  "encryptionCertificate": "String",
  "encryptionCertificateId": "String",
  "latestSupportedTlsVersion": "String",
  "notificationQueryOptions": "String",
  "notificationContentType": "String",
  "notificationUrlAppId": "String"
}
```

[contact]: ./contact.md
[conversation]: ./conversation.md
[driveItem]: ./driveitem.md
[list]: ./list.md
[site]: ./site.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[alert]: ./alert.md
[chatMessage]: ./chatmessage.md
[callRecord]: ./callrecords-callrecord.md
[presence]: ./presence.md
[printer]: ./printer.md
[printTaskDefinition]: ./printtaskdefinition.md
[todoTask]: ./todotask.md
[online meeting]: ./onlinemeeting.md
[baseTask]: ./basetask.md

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "subscription resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


