---
title: "Update reportRoot"
description: "Update the properties of a reportRoot object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update reportRoot
Namespace: microsoft.graph

Update the properties of a [reportRoot](../resources/reportroot.md) object.

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
PATCH /reports
PATCH /print/reports/{reportRootId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [reportRoot](../resources/reportroot.md) object.

The following table shows the properties that are required when you update the [reportRoot](../resources/reportroot.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [reportRoot](../resources/reportroot.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_reportroot"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/reports
Content-Type: application/json
Content-length: 52

{
  "@odata.type": "#microsoft.graph.reportRoot"
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
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "d3b688e6-88e6-d3b6-e688-b6d3e688b6d3"
}
```

