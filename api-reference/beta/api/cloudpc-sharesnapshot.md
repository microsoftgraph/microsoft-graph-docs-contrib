---
title: "cloudPC: shareSnapshot"
description: "Share a snapshot of Cloud PC to a storage account.."
author: "doudoujinjin"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: shareSnapshot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Share a snapshot for a specific Cloud PC to a storage account.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudPCs/{id}/shareSnapshot
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|cloudPcSnapshotId|String|The unique identifier for the snapshot of the Cloud PC device at a specific point in time.|
|storageAccountId|String|The storage account which will receive the snapshot.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc_shareSnapshot"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/b0a9cde2-e170-4dd9-97c3-ad1d3328a711/shareSnapshot
Content-Type: application/json
Content-length: 37

{
    "cloudPcSnapshotId": "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8",
    "storageAccountId": "subscriptions/72fbc666-3d9d-4174-9e21-425f321a6ed7/resourceGroups/CPC/providers/Microsoft.Storage/storageAccounts/test123"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
