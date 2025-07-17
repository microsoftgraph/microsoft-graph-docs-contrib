---
title: "List messages"
description: "Get the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders)."
ms.localizationpriority: high
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/21/2024
---

# List messages

Namespace: microsoft.graph

Get the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders).

Depending on the page size and mailbox data, getting messages from a mailbox can incur multiple requests. The default page size is 10 messages. Use `$top` to customize the page size, within the range of 1 and 1000.

To improve the operation response time, use `$select` to specify the exact properties you need; see [example 1](#example-1-list-all-messages) below. Fine-tune the values for `$select` and `$top`, especially when you must use a larger page size, as returning a page with hundreds of messages each with a full response payload may trigger the [gateway timeout](/graph/errors#http-status-codes) (HTTP 504).

To get the next page of messages, simply apply the entire URL returned in `@odata.nextLink` to the next get-messages request. This URL includes any query parameters you may have specified in the initial request.

Do not try to extract the `$skip` value from the `@odata.nextLink` URL to manipulate responses. This API uses the `$skip` value to keep count of all the items it has gone through in the user's mailbox to return a page of message-type items. It's therefore possible that even in the initial response, the `$skip` value is larger than the page size. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

Currently, this operation returns message bodies in only HTML format.

There are two scenarios where an app can get messages in another user's mail folder:

* If the app has application permissions, or,
* If the app has the appropriate delegated [permissions](#permissions) from one user, and another user has shared a mail folder with that user, or, has given delegated access to that user. See [details and an example](/graph/outlook-share-messages-folders).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_list_messages" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-list-messages-permissions.md)]

## HTTP request

To get all the messages in a user's mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET /me/messages
GET /users/{id | userPrincipalName}/messages
```

To get messages in a specific folder in the user's mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/messages
GET /users/{id | userPrincipalName}/mailFolders/{id}/messages
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

### Using filter and orderby in the same query
When using `$filter` and `$orderby` in the same query to get messages, make sure to specify properties in the following ways:

1. Properties that appear in `$orderby` must also appear in `$filter`.
2. Properties that appear in `$orderby` are in the same order as in `$filter`.
3. Properties that are present in `$orderby` appear in `$filter` before any properties that aren't.

Failing to do this results in the following error:

- Error code: `InefficientFilter`
- Error message: `The restriction or sort order is too complex for this operation.`

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer: outlook.body-content-type | string | The format of the **body** and **uniqueBody** properties to be returned in. Values can be "text" or "html". If the header is not specified, the **body** and **uniqueBody** properties are returned in HTML format. Optional. |


## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Message](../resources/message.md) objects in the response body.

## Examples
### Example 1: List all messages
#### Request
The following shows an example that gets the default, top 10 messages in the signed-in user's mailbox. It uses `$select` to return a subset of the properties of each message in the response.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_messages"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$select=sender,subject
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-messages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-messages-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-messages-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-messages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-messages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-messages-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-messages-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-messages-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response. To get the next page of messages, apply the URL returned in `@odata.nextLink` to a subsequent GET request.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('bb8775a4-4d8c-42cf-a1d4-4d58c2bb668f')/messages(sender,subject)",
    "value": [
        {
            "@odata.etag": "W/\"CQAAABYAAADHcgC8Hl9tRZ/hc1wEUs1TAAAwR4Hg\"",
            "id": "AAMkAGUAAAwTW09AAA=",
            "subject": "You have late tasks!",
            "sender": {
                "emailAddress": {
                    "name": "Microsoft Planner",
                    "address": "noreply@Planner.Office365.com"
                }
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List messages",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->
