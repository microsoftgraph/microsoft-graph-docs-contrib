---
title: "Get cloudPcBulkAction"
description: "Read the properties and relationships of a cloudPcBulkAction object."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcBulkAction
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/bulkActions/{cloudPcBulkActionId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_cloudpcbulkaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions/{cloudPcBulkActionId}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcBulkAction",
    "id": "231ad98f-41b3-872b-dd37-c70bf22cbdac",
    "displayName": "String",
    "cloudPcIds": [
      "Guid"
    ],
    "actionSummary": {
      "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
    },
    "createdDateTime": "String (timestamp)"
  }
}
```

