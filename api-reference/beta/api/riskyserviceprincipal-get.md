---
title: "Get riskyServicePrincipal"
description: "Read the properties and relationships of a riskyServicePrincipal object."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get riskyServicePrincipal
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [riskyServicePrincipal](../resources/riskyserviceprincipal.md) object.

>**Note:** Using the riskyServicePrincipal API requires an Azure AD Premium P2 license.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|IdentityRiskyServicePrincipal.Read.All, IdentityRiskyServicePrincipal.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|IdentityRiskyServicePrincipal.Read.All, IdentityRiskyServicePrincipal.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityProtection/riskyServicePrincipals/{riskyServicePrincipalId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [riskyServicePrincipal](../resources/riskyserviceprincipal.md) object in the response body.

## Examples

### Example 1: List risky service principals
#### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_riskyserviceprincipal"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProtection/riskyServicePrincipals
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.riskyServicePrincipal"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.riskyServicePrincipal",
    "id": "9089a539-a539-9089-39a5-899039a58990",
    "accountEnabled": "true",
    "isProcessing": "false",
    "riskLastUpdatedDateTime": "2021-08-14T13:06:51.0451374Z",
    "riskLevel": "high",
    "riskState": "atRisk",
    "riskDetail": "none",
    "displayName": "Contoso App",
    "appId": "b55552fe-a272-4b56-990b-95038d917878",
    "servicePrincipalType": "Application"
  }
}
```

### Example 2: List a filtered set of risky service principals
#### Request
The following example shows how to use `$filter` to get the collection of riskyServicePrincipal objects whose aggregate risk level is `high`.
<!-- {
  "blockType": "request",
  "name": "get_riskyserviceprincipal"
}
-->

 ``` http
GET https://graph.microsoft.com/beta/identityProtection/riskyServicePrincipals$filter=riskLevel eq microsoft.graph.riskLevel'high'
```


### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.riskyServicePrincipal"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.riskyServicePrincipal",
    "id": "9089a539-a539-9089-39a5-899039a58990",
    "accountEnabled": "true",
    "isProcessing": "false",
    "riskLastUpdatedDateTime": "2021-08-14T13:06:51.0451374Z",
    "riskLevel": "high",
    "riskState": "atRisk",
    "riskDetail": "none",
    "displayName": "Contoso App",
    "appId": "b55552fe-a272-4b56-990b-95038d917878",
    "servicePrincipalType": "Application"
  }
}
```

