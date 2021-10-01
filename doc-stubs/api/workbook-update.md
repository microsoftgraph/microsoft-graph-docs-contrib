---
title: "Update workbook"
description: "Update the properties of a workbook object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update workbook
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [workbook](../resources/workbook.md) object.

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
PATCH /drive/activities/{itemActivityOLDId}/driveItem/workbook
PATCH /drives/{drivesId}/activities/{itemActivityOLDId}/driveItem/workbook
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [workbook](../resources/workbook.md) object.

The following table shows the properties that are required when you update the [workbook](../resources/workbook.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [workbook](../resources/workbook.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_workbook"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/drive/activities/{itemActivityOLDId}/driveItem/workbook
Content-Type: application/json
Content-length: 50

{
  "@odata.type": "#microsoft.graph.workbook"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.workbook",
  "id": "e6d87439-7439-e6d8-3974-d8e63974d8e6"
}
```

