---
title: "cloudPC: restore"
description: "Restore a specific Cloud PC. When IT admins want to restore a Cloud PC device to a previous state, they can use this API to trigger a restore remote action for Cloud PC. This API needs a parameter indicating the snapshot id to tell service which snapshot to restore this Cloud PC to."
author: "xumzheng"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore a specific Cloud PC. When IT admins want to restore a Cloud PC device to a previous state, they can use this API to trigger a restore remote action for Cloud PC. This API needs a parameter indicating the snapshot id to tell service which snapshot to restore this Cloud PC to.

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
POST /deviceManagement/virtualEndpoint/cloudPCs/{id}/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|cloudPcSnapshotId|String|The snapshot id of Cloud PC to restore to previous state.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "cloudpc_restore"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/4b5ad5e0-6a0b-4ffc-818d-36bb23cf4dbd/restore
Content-Type: application/json
Content-length: 37

{
  "cloudPcSnapshotId": "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8"
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
