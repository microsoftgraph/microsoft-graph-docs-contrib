---
title: "cloudPcOnPremisesConnection: updateAdDomainPassword"
description: "Update the Active Directory domain password for a successful Azure network connection."
author: "shijun2026-3"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 03/25/2026
---

# cloudPcOnPremisesConnection: updateAdDomainPassword
Namespace: microsoft.graph

Update the Active Directory domain password for a successful [cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md). This API is supported when the type of the **cloudPcOnPremisesConnection** object is `hybridAzureADJoin`.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpconpremisesconnection_updateaddomainpassword" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpconpremisesconnection-updateaddomainpassword-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameter that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|adDomainPassword|String|The password associated with the **adDomainUsername**.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpconpremisesconnection_updateaddomainpassword",
  "sampleKeys": ["07f12770-a225-4957-9127-0d247cf4ffff"]
}
-->

``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/onPremisesConnections/07f12770-a225-4957-9127-0d247cf4ffff/updateAdDomainPassword
Content-Type: application/json

{
  "adDomainPassword": "AdDomainPassword_XXXX"
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
