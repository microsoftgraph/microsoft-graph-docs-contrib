---
title: "cloudPcBulkAction: retry"
description: "Retry a cloudPcBulkAction object with selected Cloud PCs."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 01/01/2025
---

# cloudPcBulkAction: retry

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retry a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object with selected Cloud PCs. 

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcbulkaction_retry" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcbulkaction-retry-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /deviceManagement/virtualEndpoint/bulkAction/{id}/retry
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

|Property|Type|Description|
|:---|:---|:---|
|cloudPcIds|String collection|A list of IDs for the Cloud PC devices to be retried for the given bulk action. This is optional; if not provided, all failed devices are retried.|

## Response

If successful, this method returns a `202 Accepted` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcbulkaction_retry"
}
-->
```http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkAction/0d76d02b-e0a0-4f58-baff-d1718cc2d144/retry
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.cloudPcBulkAction",
  "cloudPcIds": [
    "30d0e128-de93-41dc-89ec-33d84bb662a0",
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ]
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
```
