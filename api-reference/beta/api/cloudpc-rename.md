---
title: "cloudPC: rename"
description: "Rename a specific Cloud PC. Update the displayName for the Cloud PC entity."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: rename

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rename a specific Cloud PC. Update the **displayName** for the Cloud PC entity.

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
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/rename
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The new display name for the Cloud PC.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "rename_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/c2bbb5dd-2574-451b-a508-bbaa6ac48ace/rename
Content-Type: application/json

{
  displayName: "Cloud PC-HR"
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
