---
title: "Delete termStore group"
description: "Delete a group object."
author: vishriv
localization_priority: Normal
ms.prod: "taxonomy"
doc_type: apiPageType
---

# Delete termStore group
Namespace: microsoft.graph.termStore

Delete a [group](../resources/termstore-group.md) object in the term [store].

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) |TermStore.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE sites/{site-id}/termStore/groups/{group-id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "delete_group_from_store"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/sites/microsoft.sharepoint.com,b9b0bc03-cbc4-40d2-aba9-2c9dd9821ddf,6a742cee-9216-4db5-8046-13a595684e74/termStore/groups/03577abb-975e-4fb4-9ee0-4102a9108f94
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

[microsoft.graph.termStore.group]: ../resources/termstore-group.md
[microsoft.graph.termStore.store]: ../resources/termstore-store.md
[microsoft.graph.termStore.set]: ../resources/termstore-set.md
[store]: ../resources/termstore-store.md

<!--
{
  "type": "#page.annotation",
  "description": "Delete a termGroup entity in termStore",
  "keywords": "term,termStore",
  "section": "documentation",
  "tocPath": "termStore/Delete termGroup",
  "suppressions": [
  ]
}
-->


