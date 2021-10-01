---
title: "Create workbookOperation"
description: "Create a new workbookOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create workbookOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [workbookOperation](../resources/workbookoperation.md) object.

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
POST /drive/activities/{itemActivityOLDId}/driveItem/workbook/operations
POST /drives/{drivesId}/activities/{itemActivityOLDId}/driveItem/workbook/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [workbookOperation](../resources/workbookoperation.md) object.

The following table shows the properties that are required when you create the [workbookOperation](../resources/workbookoperation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|error|[workbookOperationError](../resources/workbookoperationerror.md)|**TODO: Add Description**|
|resourceLocation|String|**TODO: Add Description**|
|status|workbookOperationStatus|**TODO: Add Description**. The possible values are: `notStarted`, `running`, `succeeded`, `failed`.|
|statusCode|Int32|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [workbookOperation](../resources/workbookoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_workbookoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/drive/activities/{itemActivityOLDId}/driveItem/workbook/operations
Content-Type: application/json
Content-length: 224

{
  "@odata.type": "#microsoft.graph.workbookOperation",
  "error": {
    "@odata.type": "microsoft.graph.workbookOperationError"
  },
  "resourceLocation": "String",
  "status": "String",
  "statusCode": "Integer"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.workbookOperation",
  "id": "bb89090b-090b-bb89-0b09-89bb0b0989bb",
  "error": {
    "@odata.type": "microsoft.graph.workbookOperationError"
  },
  "resourceLocation": "String",
  "status": "String",
  "statusCode": "Integer"
}
```

