---
title: "ediscoveryCustodian: applyHold"
description: "Start the process of applying hold to eDiscovery custodians."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: "apiPageType"
---

# ediscoveryCustodian: applyHold
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Start the process of applying hold to eDiscovery custodians. After the operation is created, you can get the status of the case operation by retrieving the `Location` parameter from the response headers. The location provides a URL that will return a [eDiscoveryHoldOpertaion]](../resources/security-ediscoveryholdoperation.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/custodians/applyHold
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/custodians/{eDiscoveryCustodianId}/applyHold
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
|ids|String collection|The IDs of custodians to apply hold. Optional.|


## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Example 1. Apply hold to multiple custodians.
#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "ediscoverycustodianthis.applyhold"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/eDiscoverycases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/applyHold
Content-Type: application/json
{
  "ids": [
    "7f697316-43ed-48e1-977f-261be050db93", "b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8"
  ]
}
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted

{
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/operations('1ab699d7e53d46de944144c4a650d66f')",
}
```

### Example 2. Apply hold to a single custodian.
#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "ediscoverycustodianthis.applyhold"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/cases/eDiscoverycases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/custodians/c25c3914f9f743ee9cbaa25377e0cec6/applyHold
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted

{
    "location": "https://graph.microsoft.com/beta/security/cases/ediscoverycases('b0073e4e-4184-41c6-9eb7-8c8cc3e2288b')/operations('1ab699d7e53d46de944144c4a650d66f')",
}
```