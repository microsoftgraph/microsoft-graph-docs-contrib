---
title: "cloudPC: powerOn"
description: "Power on specific Cloud PC."
author: "rbayetov"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: powerOn

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Power on a Frontline Cloud PC. This action supports [Windows 365 Frontline](https://www.microsoft.com/en/windows-365/frontline) Microsoft Endpoint Manager (MEM) admin scenarios. 

After a Frontline Cloud PC is powered on, it is allocated to a user, and licenses are assigned immediately. Only IT admin users can perform this action. 

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
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/poweron
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "poweron_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/831dd62e-cfa1-4d49-a3b4-58d4e9920f8e/poweron
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
