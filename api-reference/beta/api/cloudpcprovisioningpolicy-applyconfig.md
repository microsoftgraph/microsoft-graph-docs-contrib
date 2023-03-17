---
title: "cloudPcProvisioningPolicy: applyConfig"
description: "Update the provisioning policy configuration for a set of Cloud PC devices by their IDs, supporting retry and subset of Cloud PCs to initially test for the apply API."
author: "Guoan Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcProvisioningPolicy: applyConfig
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the [provisioning policy](../resources/cloudpcprovisioningpolicy.md) configuration for a set of Cloud PC devices by their IDs, supporting retry and subset of Cloud PCs to initially test for the [cloudPcProvisioningPolicy: apply](cloudpcprovisioningpolicy-apply.md) API.

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
POST /deviceManagement/virtualEndpoint/provisioningPolicies/applyConfig
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
|cloudPcIds|String collection|A collection of Cloud PC IDs.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "cloudpcprovisioningpolicythis.applyconfig"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/provisioningPolicies/applyConfig
Content-Type: application/json

{
  "cloudPcIds": [
    "52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4",
    "ff117b6c-e3e6-41be-9cae-eb6743249a30"
  ]
}
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
