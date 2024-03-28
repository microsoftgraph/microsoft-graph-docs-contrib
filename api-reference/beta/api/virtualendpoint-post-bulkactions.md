---
title: "Create cloudPcBulkAction"
description: "Create a new cloudPcBulkAction object."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Create cloudPcBulkAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.ReadWrite.All|

## Permissions

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/bulkActions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

You can specify the following properties when you create a **cloudPcBulkAction**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of this bulk action. Required.|
|cloudPcIds|String collection|ID of Cloud PCs this bulk action applies to. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_cloudpcbulkaction_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkAction",
  "displayName": "String",
  "cloudPcIds": [
    "guid"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  }
}
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcBulkAction"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkAction",
  "id": "231ad98f-41b3-872b-dd37-c70bf22cbdac",
  "displayName": "String",
  "cloudPcIds": [
    "guid"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)"
}
```
