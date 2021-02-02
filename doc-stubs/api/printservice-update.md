---
title: "Update printService"
description: "Update the properties of a printService object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update printService
Namespace: microsoft.graph

Update the properties of a [printService](../resources/printservice.md) object.

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
PATCH /print/services/{printServiceId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [printService](../resources/printservice.md) object.

The following table shows the properties that are required when you update the [printService](../resources/printservice.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [printService](../resources/printservice.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_printservice"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/print/services/{printServiceId}
Content-Type: application/json
Content-length: 54

{
  "@odata.type": "#microsoft.graph.printService"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.printService",
  "id": "f83e0f77-0f77-f83e-770f-3ef8770f3ef8"
}
```

