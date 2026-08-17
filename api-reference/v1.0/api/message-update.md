---
title: "Update message"
description: "Update a message by using JSON or MIME payloads."
author: "SuryaLashmiS"
ms.localizationpriority: high
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 08/17/2026
---

# Update message

Namespace: microsoft.graph

Update the properties of a message object.

This API supports updates by using either JSON or MIME payloads. JSON payloads update specific writable properties, while MIME payloads apply a higher-impact full message-content update.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.ReadWrite (JSON payload), Mail.Advanced.ReadWrite (MIME payload)    |
|Delegated (personal Microsoft account) | Mail.ReadWrite (JSON payload), Mail.Advanced.ReadWrite (MIME payload)    |
|Application | Mail.ReadWrite (JSON payload), Mail.Advanced.ReadWrite (MIME payload) |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/messages/{id}
PATCH /users/{id | userPrincipalName}/messages/{id}
PATCH /me/mailFolders/{id}/messages/{id}
PATCH /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | string  | Nature of the data in the body of an entity. Required. Use `application/json` for a JSON object and `text/plain` for MIME content. |
## Request body
When using JSON format, in the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed. The following properties can be updated.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bccRecipients|Recipient|The Bcc recipients for the message. Updatable only if **isDraft** = `true`.|
|body|ItemBody|The body of the message. Updatable only if **isDraft** = `true`.|
|categories|String collection|The categories associated with the message.|
|ccRecipients|Recipient collection|The Cc recipients for the message. Updatable only if **isDraft** = `true`.|
|flag|[followupFlag](../resources/followupflag.md)|The flag value that indicates the status, start date, due date, or completion date for the message.|
|from|Recipient|The mailbox owner and sender of the message. Must correspond to the actual mailbox used.|
|importance|String|The importance of the message. The possible values are: `Low`, `Normal`, `High`.|
|inferenceClassification | String | The classification of the message for the user, based on inferred relevance or importance, or on an explicit override. The possible values are: `focused` or `other`. |
|internetMessageId |String |The message ID in the format specified by [RFC2822](https://www.ietf.org/rfc/rfc2822.txt). Updatable only if **isDraft** = `true`.|
|isDeliveryReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|isRead|Boolean|Indicates whether the message has been read.|
|isReadReceiptRequested|Boolean|Indicates whether a read receipt is requested for the message.|
|multiValueExtendedProperties|[multiValueLegacyExtendedProperty](../resources/multivaluelegacyextendedproperty.md) collection| The collection of multi-value extended properties defined for the message. Nullable. Updatable only if **isDraft** = `true`.|
|replyTo|Recipient collection|The email addresses to use when replying. Updatable only if **isDraft** = `true`.|
|sender|Recipient|The account that is actually used to generate the message. Updatable when sending a message from a [shared mailbox](/exchange/collaboration/shared-mailboxes/shared-mailboxes), or sending a message as a [delegate](https://support.office.com/en-us/article/allow-someone-else-to-manage-your-mail-and-calendar-41c40c04-3bd1-4d22-963a-28eafec25926). In any case, the value must correspond to the actual mailbox used.|
|singleValueExtendedProperties|[singleValueLegacyExtendedProperty](../resources/singlevaluelegacyextendedproperty.md) collection| The collection of single-value extended properties defined for the message. Nullable. Updatable only if **isDraft** = `true`.|
|subject|String|The subject of the message. Updatable only if **isDraft** = `true`.|
|toRecipients|Recipient collection|The To recipients for the message. Updatable only if **isDraft** = `true`.|

Since the **message** resource supports [extensions](/graph/extensibility-overview), you can use the `PATCH` operation to
add, update, or delete your own app-specific data in custom properties of an extension in an existing **message** instance.

When specifying the body in MIME format, provide the MIME content as **a base64-encoded string** in the request body. MIME updates apply a full message-content update and require `Mail.Advanced.ReadWrite`.

## Response

If successful, this method returns a `200 OK` response code and updated [message](../resources/message.md) object in the response body.

If the request body includes malformed MIME content, this method returns `400 Bad request` and the following error message: "Invalid base64 string for MIME content."
## Example
### Example 1: Update a message using JSON format

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_message"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/me/messages/{id}
Content-type: application/json

{
  "subject": "subject-value",
  "body": {
    "contentType": "",
    "content": "content-value"
  },
  "inferenceClassification": "other"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-message-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-message-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-message-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-message-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-message-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-message-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-message-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "receivedDateTime": "datetime-value",
  "sentDateTime": "datetime-value",
  "hasAttachments": true,
  "subject": "subject-value",
  "body": {
    "contentType": "",
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value",
  "inferenceClassification": "other"
}
```

### Example 2: Update a message using MIME format

#### Request

<!-- {
  "blockType": "ignored",
  "name": "update_message_mime"
 }-->

```http
PATCH https://graph.microsoft.com/v1.0/me/messages/{id}
Content-type: text/plain

Q29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PSJ1cy1hc2NpaSINCk1pbWUtVmVyc2lvbjogMS4wDQpTdWJqZWN0OiBVcGRhdGVkIG1lc3NhZ2UNCg0KVXBkYXRlZCBtZXNzYWdlIGJvZHkgdmlhIE1JTUUu
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
 } -->
```http
HTTP/1.1 200 OK
Content-type: application/json
```

## Related content

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
<!--
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)
-->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update message",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
