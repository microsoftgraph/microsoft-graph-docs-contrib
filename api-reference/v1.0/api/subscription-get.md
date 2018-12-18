---
title: "Get subscription"
description: "Retrieve the properties and relationships of a subscription."
---

# Get subscription

Retrieve the properties and relationships of a subscription.

## Permissions

The following table lists the suggested permission needed for each resource. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Resource type / Item        | Permission          |
|-----------------------------|---------------------|
| Contacts                    | Contacts.Read       |
| Conversations               | Group.Read.All      |
| Events                      | Calendars.Read      |
| Messages                    | Mail.Read           |
| Groups                      | Group.Read.All      |
| Users                       | User.Read.All       |
| Drive  (User's OneDrive)    | Files.ReadWrite     |
| Drives (SharePoint shared content and drives) | Files.ReadWrite.All |
|Security alert| SecurityEvents.ReadWrite.All |

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
|[contact](../resources/contact.md) | Contacts.Read | Contacts.Read | Contacts.Read |
|[drive](../resources/drive.md) (user's OneDrive) | Files.ReadWrite | Files.ReadWrite | Files.ReadWrite.All |
|[drive](../resources/drive.md) (SharePoint shared content and drive) | Files.ReadWrite.All | Not supported | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read | Calendars.Read | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All | Not supported | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All | Not supported | Not supported |
|[message](../resources/message.md) | Mail.Read | Mail.Read | Mail.Read |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All | Not supported | SecurityEvents.ReadWrite.All |
|[user](../resources/user.md) | User.Read | User.Read | User.Read.All |

> **Note:** The respective sharing permissions (Contacts.Read.Shared, Calendars.Read.Shared, Mail.Read.Shared, and their read/write counterparts) allow reading or writing contacts, events, and messages in shared or delegated folders. However, these sharing permissions do NOT support creating or accessing subscriptions to contacts, events, and messages in such folders. Use the corresponding application permissions (with Contacts.Read, Calendars.Read, Mail.Read being the least privileged permissions) to subscribe to items in the corresponding contact, calendar, and mail folders in all the mailboxes.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /subscriptions/{id}
```

## Optional query parameters

This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and [subscription](../resources/subscription.md) object in the response body.

## Example

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_subscription"
}-->

```http
GET https://graph.microsoft.com/v1.0/subscriptions/{id}
```

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.subscription"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 252

{
  "id":"7f105c7d-2dc5-4530-97cd-4e7ae6534c07",
  "resource":"me/messages",
  "applicationId" : "string",
  "changeType":"created,updated",
  "clientState":"secretClientValue",
  "notificationUrl":"https://webhook.azurewebsites.net/api/send/myNotifyClient",
  "expirationDateTime":"2016-11-20T18:23:45.9356913Z",
  "creatorId": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
