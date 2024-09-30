---
title: "CloudPcBulkAction: retry"
description: "Retry on the Cloud PC bulk action object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# CloudPcBulkAction: retry

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retry on a give [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object with selected Cloud PCs. 

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

``` http
POST /deviceManagement/virtualEndpoint/bulkAction/{id}/retry
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|cloudPcIds|String collection|A list of the IDs for the Cloud PC devices that are to be retried for the give bulk action. This is optional, if not give, will retry all failed devices.|

## Response

If successful, this method returns a `202 Accepted` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "cloudpcbulkaction_retry"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/bulkAction/{id}/retry
Content-Type: application/json

{
  "@odata.type":"#microsoft.graph.cloudPcBulkAction",
  "cloudPcIds":[
    "30d0e128-de93-41dc-89ec-33d84bb662a0",
    "7c82a3e3-9459-44e4-94d9-b92f93bf78dd"
  ]
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 202 Accepted
```
