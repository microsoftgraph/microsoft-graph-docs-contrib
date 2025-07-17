---
title: "message: delta"
description: "Get a set of messages that were added, deleted, or updated in a specified folder."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/22/2024
---

# message: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of messages that were added, deleted, or updated in a specified folder.

A **delta** function call for messages in a folder is similar to a GET request, except that by appropriately
applying [state tokens](/graph/delta-query-overview) in one or more of these calls, you can [query for incremental changes in the messages in
that folder](/graph/delta-query-messages). Using deltas allows you toincrementally maintain and synchronize a local store of a user's messages.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "message_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/message-delta-permissions.md)]


## HTTP request

To get all changes in messages in the specified [mailFolder](../resources/mailfolder.md):
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/messages/delta
GET /users/{id}/mailFolders/{id}/messages/delta
```

To specifically get only created, updated, or deleted messages in the specified **mailFolder**:
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/messages/delta?changeType=created
GET /users/{id}/mailFolders/{id}/messages/delta?changeType=created
GET /me/mailFolders/{id}/messages/delta?changeType=updated
GET /users/{id}/mailFolders/{id}/messages/delta?changeType=updated
GET /me/mailFolders/{id}/messages/delta?changeType=deleted
GET /users/{id}/mailFolders/{id}/messages/delta?changeType=deleted
```

## Query parameters

Tracking changes in messages incurs a round of one or more **delta** function calls. If you use any [OData system query option](/graph/query-parameters#odata-system-query-options) or the custom query option, `changeType`, you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters
into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response.
You only need to specify any desired query parameters once upfront.
In subsequent requests, simply copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response, as that URL already
includes the encoded, desired parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same message collection, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same message collection. |
| changeType | string | A custom query option to filter the delta response based on the type of change. Supported values are `created`, `updated`, or `deleted`.|

### OData query parameters

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The
_id_ property is always returned.
- Delta query support `$select`, `$top`, and `$expand` for messages.
- There's limited support for `$filter` and `$orderby`:
  * The only supported `$filter` expresssions are `$filter=receivedDateTime+ge+{value}`
  or `$filter=receivedDateTime+gt+{value}`.
  * The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you don't include
  an `$orderby` expression, the return order isn't guaranteed.
- There's no support for `$search`.

## Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |

## Response

If successful, this method returns a `200 OK` response code and [message](../resources/message.md) collection object in the response body.

## Example
##### Request
The following example shows how to make a single **delta** function call, and limit the maximum number of messages
in the response body to 2.

To track changes in the messages in a folder, you would make one or more **delta** function calls to get the set
of incremental changes since the last delta query. For an example that shows a round of delta query calls, see
[Get incremental changes to messages in a folder](/graph/delta-query-messages).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "message_delta"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailFolders/{id}/messages/delta

Prefer: odata.maxpagesize=2
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/message-delta-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/message-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

##### Response
If the request is successful, the response would include a state token, which is either a _skipToken_
(in an _@odata.nextLink_ response header) or a _deltaToken_ (in an _@odata.deltaLink_ response header).
Respectively, they indicate whether you should continue with the round or you finished
getting all the changes for that round.

The following response shows a _skipToken_ in an _@odata.nextLink_ response header.

Note: The response object shown here might be shortened for readability.
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
  "@odata.nextLink":"https://graph.microsoft.com/beta/me/mailFolders/{id}/messages/delta?$skiptoken={_skipToken_}",
  "value": [
    {
      "receivedDateTime": "datetime-value",
      "sentDateTime": "datetime-value",
      "hasAttachments": true,
      "internetMessageId": "internetMessageId-value",
      "subject": "subject-value",
      "body": {
        "contentType": "contentType-value",
        "content": "content-value"
      }
    }
  ]
}
```

## Related content

- [Microsoft Graph delta query](/graph/delta-query-overview)
- [Get incremental changes to messages in a folder](/graph/delta-query-messages)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "message: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


