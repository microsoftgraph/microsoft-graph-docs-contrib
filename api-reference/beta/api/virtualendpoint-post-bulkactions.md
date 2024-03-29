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

## HTTP request

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
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Required.|
|scheduledDuringMaintenanceWindow|Boolean|Indicates whether the bulk actions can be initiated during maintenance window. When `true`, bulk action will use maintenance window to schedule action, When `false` means bulk action will not use the maintenance window. Default value is `false`.|

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
  "displayName": "Bulk Power Off by Andy",
  "cloudPcIds": [
    "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
    "85994912-197b-4927-b569-447bd81350ec"
  ],
  "scheduledDuringMaintenanceWindow": true
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
  "displayName": "Bulk Power Off by Andy",
  "cloudPcIds": [
    "d6e0b8ee-8836-4b8d-b038-6130a97a3a9d",
    "85994912-197b-4927-b569-447bd81350ec"
  ],
  "actionSummary": {
    "failedCount": 0,
    "inProgressCount": 0,
    "notSupportedCount": 0,
    "pendingCount": 2,
    "successfulCount": 0
  },
  "scheduledDuringMaintenanceWindow": true,
  "createdDateTime": "2024-02-05T10:29:57Z"
}
```
