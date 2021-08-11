---
title: "cloudPC: endGracePeriod"
description: "End grace period for a specific Cloud PC."
author: "RuiHou105"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: endGracePeriod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

End grace period for a specific Cloud PC.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]
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
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/endGracePeriod
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request


<!-- {
  "blockType": "request",
  "name": "endgraceperiod_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/endGracePeriod
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
