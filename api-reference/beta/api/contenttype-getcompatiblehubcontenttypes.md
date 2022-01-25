---
title: "contentType: getCompatibleHubContentTypes"
description: "Get compatible content types in content type hub that can be added to a target site or a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# contentType: getCompatibleHubContentTypes
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get compatible content types in the content type hub that can be added to a target [site](../resources/site.md) or a [list](../resources/list.md).

This API is part of new content type publishing changes to optimize the syncing of published content types to sites and lists. As part of this optimization we are switching to a usage-based **subscription** model, effectively moving from a **push everywhere** to **pull as needed** approach. Users can get the list of content types that can be pulled from the content type hub to required site or list by using this API. More details about this change can be found in [blog post](https://techcommunity.microsoft.com/t5/sharepoint-syntex-blog/syntex-product-updates-august-2021/ba-p/2606438).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Sites.Manage.All, Sites.FullControl.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Manage.All, Sites.FullControl.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{siteId}/lists/{listId}/contentTypes/getCompatibleHubContentTypes
GET /sites/{siteId}/contentTypes/getCompatibleHubContentTypes
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [contentType](../resources/contenttype.md) collection in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_getcompatiblehubcontenttypes"
}
-->
``` http
GET https://graph.microsoft.com/beta//sites/{siteId}/lists/{listId}/contentTypes/getCompatibleHubContentTypes
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.contentType)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.contentType",
      "id": "0x0101",
      "description": "Document content type",
      "group": "Document Content Types",
      "hidden": false,
      "isBuiltIn": true,
      "name": "Document"
    }
  ]
}
```

