---
title: "cloudPcOnPremisesConnection: updateAdDomainPassword"
description: "Update AD domain password for a successful onPremisesConnection."
author: "AshleyYangSZ"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcOnPremisesConnection: updateAdDomainPassword
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update Active Directory domain password for a successful [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) object.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/onPremisesConnections/{id}/updateAdDomainPassword
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|adDomainPassword|String|The new Active Directory domain password.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "cloudpconpremisesconnection_updateaddomainpassword"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/onPremisesConnections/{id}/updateAdDomainPassword

Content-Type: application/json
Content-length: 56

{
  "adDomainPassword": "Example adDomainPasswrod value"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
