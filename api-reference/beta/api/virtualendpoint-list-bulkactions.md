---
title: "List bulkActions"
description: "Get a list of the cloudPcBulkAction objects and their properties."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# List bulkActions
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.

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
GET /deviceManagement/virtualEndpoint/bulkActions
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_cloudpcbulkaction"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.cloudPcBulkAction)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "value": {
        "@odata.type": "#microsoft.graph.cloudPcBulkAction",
        "id": "231ad98f-41b3-872b-dd37-c70bf22cbdac",
        "displayName": "Bulk Power Off by Andy",
        "cloudPcIds": [
          "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
          "85994912-197b-4927-b569-447bd81350ec"
        ],
        "actionSummary": {
          "failedCount": 1,
          "inProgressCount": 0,
          "notSupportedCount": 0,
          "pendingCount": 1,
          "successfulCount": 0
        },
        "createdDateTime": "2024-02-05T10:29:57Z"
      }
    }
  ]
}
```
