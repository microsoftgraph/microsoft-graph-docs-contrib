---
title: "contentType: publish"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# contentType: publish
Namespace: microsoft.graph



**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
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
POST /drive/list/contentTypes/{contentTypeId}/publish
POST /sites/{sitesId}/contentTypes/{contentTypeId}/publish
POST /drive/list/contentTypes/{contentTypeId}/base/publish
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/publish
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/base/publish
POST /drive/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/publish
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/publish
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_publish"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/drive/list/contentTypes/{contentTypeId}/publish
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

