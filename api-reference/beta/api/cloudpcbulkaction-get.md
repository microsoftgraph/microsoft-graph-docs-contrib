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
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcbulkaction_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcbulkaction-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/bulkActions/{cloudPcBulkActionId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

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
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkActions/231ad98f-41b3-872b-dd37-c70bf22cbdac
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
    "scheduledDuringMaintenanceWindow": true,
    "createdDateTime": "2024-02-05T10:29:57Z"
  }
}
```

