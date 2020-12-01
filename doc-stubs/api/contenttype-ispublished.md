---
title: "contentType: isPublished"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# contentType: isPublished
Namespace: microsoft.graph

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /drive/list/contentTypes/{contentTypeId}/isPublished
GET /sites/{sitesId}/contentTypes/{contentTypeId}/isPublished
GET /drive/list/contentTypes/{contentTypeId}/base/isPublished
GET /drives/{drivesId}/list/contentTypes/{contentTypeId}/isPublished
GET /drives/{drivesId}/list/contentTypes/{contentTypeId}/base/isPublished
GET /drive/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/isPublished
GET /drives/{drivesId}/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/isPublished
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a Boolean in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_ispublished"
}
-->
``` http
GET https://graph.microsoft.com/beta/drive/list/contentTypes/{contentTypeId}/isPublished
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Boolean"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": "Boolean"
}
```

