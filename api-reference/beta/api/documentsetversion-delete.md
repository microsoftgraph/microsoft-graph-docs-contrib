---
title: "Delete documentSetVersion"
description: "Delete a documentSetVersion object."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Delete documentSetVersion
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [documentSetVersion](../resources/documentsetversion.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Sites.ReadWrite.All, Sites.Manage.All, Sites.FullControl.All, Sites.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /sites/root/lists/Documents/items/2/documentSetVersions/1
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

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "delete_documentsetversion"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/items/{itemId}/documentSetVersions/{documentSetVersionId}
```


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

