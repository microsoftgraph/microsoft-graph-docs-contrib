---
title: "contentType: addCopyFromContentTypeHub"
description: "Add or sync a copy of a published content type from content type hub to a target site or a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# contentType: addCopyFromContentTypeHub
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add or sync a copy of a published content type from the content type hub to a target [site](../resources/site.md) or a [list](../resources/list.md).

This API is part of new content type publishing changes to optimize the syncing of published content types to sites and lists. As part of this optimization we are switching to a usage-based **subscription** model, effectively moving from a **push everywhere** to **pull as needed** approach. Users can pull content types directly from the content type hub to required site or list by using this API. More details about this change can be found in [blog post](https://techcommunity.microsoft.com/t5/sharepoint-syntex-blog/syntex-product-updates-august-2021/ba-p/2606438).
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
POST /sites/{siteId}/lists/{listId}/contentTypes/addCopyFromContentTypeHub
POST /sites/{siteId}/contentTypes/addCopyFromContentTypeHub
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|contentTypeId|String| ID of the content type in the content type hub that is to be added to the target site or a list.|



## Response

If successful, this action returns a `200 OK` response code and a [contentType](../resources/contenttype.md) object in the response body if the content type is added synchronously, or a `202 Accepted` response code if the content type will be synced asynchronously. The response will also contain a `Location` header, which contains the location of the [richLongRunningOperation](../resources/richLongRunningOperation.md) that was created to handle the copy/sync.
In case of an asynchronous operation, it can take up to 70 minutes to sync or add a content type.

## Examples

### Example 1: Synchronous pull

#### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_addcopyfromcontenttypehub"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/contentTypes/addCopyFromContentTypeHub
Content-Type: application/json
Content-length: 33

{
  "contentTypeId": "0x0101"
}
```


#### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.contentType"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.contentType",
    "id": "0x0101",
    "description": "Document content type",
    "group": "Document Content Types",
    "hidden": false,
    "isBuiltIn": true,
    "name": "Document"
}
```
### Example 2: Asynchronous pull

#### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_addcopyfromcontenttypehub"
}
-->
``` http
POST https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/contentTypes/addCopyFromContentTypeHub
Content-Type: application/json
Content-length: 33

{
  "contentTypeId": "String"
}
```


#### Response

<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 202 Accepted
location: https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/operations/{operationId}
```
