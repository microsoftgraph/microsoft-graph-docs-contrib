---
title: "cloudPC: resize"
description: "Upgrade or downgrade an existing Cloud PC to another configuration with a new virtual CPU (vCPU) and storage size."
author: "Guojing Li (liguojing929)"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: resize

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upgrade or downgrade an existing Cloud PC to another configuration with a new virtual CPU (vCPU) and storage size.

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
POST /deviceManagement/virtualEndpoint/cloudPCs/{id}/resize
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|targetServicePlanId|String|The target service plan ID of the resize configuration with new vCPU and storage size.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

## HTTP
<!-- {
  "blockType": "request",
  "name": "cloudpc_resize"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/{id}/resize
Content-Type: application/json

{
  "targetServicePlanId": "30d0e128-de93-41dc-89ec-33d84bb662a0"
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