---
title: "Delete a historyItem"
description: "Delete an existing history item for an existing user activity."
ms.localizationpriority: medium
ms.subservice: "project-rome"
author: "ailae"
doc_type: apiPageType
---

# Delete a historyItem

Namespace: microsoft.graph

Delete an existing history item for an existing user activity.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "projectrome_delete_historyitem" } -->
[!INCLUDE [permissions-table](../includes/permissions/projectrome-delete-historyitem-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /me/activities/{id}/historyItems/{id}
```

## Request headers

|Name | Type | Description|
|:----|:-----|:-----------|
|Authorization | string | Bearer {token}. Required.|

## Request body

No request body.

## Response

If successful, this method returns the `204 No Content` response code if the history item was deleted.

## Example

##### Request

Here is an example of the request.


<!-- {
  "blockType": "request",
  "name": "delete_historyItem"
}-->

```http
PUT https://graph.microsoft.com/v1.0/me/activities/{activity-id}/historyItems/{item-id}
```

##### Response

Here is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete historyitem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

