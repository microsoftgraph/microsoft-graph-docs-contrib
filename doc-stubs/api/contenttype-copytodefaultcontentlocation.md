---
title: "contentType: copyToDefaultContentLocation"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# contentType: copyToDefaultContentLocation
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
POST /drive/list/contentTypes/{contentTypeId}/copyToDefaultContentLocation
POST /sites/{sitesId}/contentTypes/{contentTypeId}/copyToDefaultContentLocation
POST /drive/list/contentTypes/{contentTypeId}/base/copyToDefaultContentLocation
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/copyToDefaultContentLocation
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/base/copyToDefaultContentLocation
POST /drive/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/copyToDefaultContentLocation
POST /drives/{drivesId}/list/contentTypes/{contentTypeId}/baseTypes/{contentTypeId}/copyToDefaultContentLocation
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|sourceFile|[itemReference](../resources/itemreference.md)|**TODO: Add Description**|
|destinationFileName|String|**TODO: Add Description**|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "contenttype_copytodefaultcontentlocation"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/drive/list/contentTypes/{contentTypeId}/copyToDefaultContentLocation
Content-Type: application/json
Content-length: 116

{
  "sourceFile": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "destinationFileName": "String"
}
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

