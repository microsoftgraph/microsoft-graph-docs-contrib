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

Read the properties and relationships of a [riskyServicePrincipal](../resources/riskyserviceprincipal.md) object.

>**Note:** Using the riskyServicePrincipal API requires a Workload Identities Premium license.

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

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_riskyserviceprincipal"
}
-->

 ``` http
GET https://graph.microsoft.com/v1.0/identityProtection/riskyServicePrincipals/9089a539-a539-9089-39a5-899039a58990
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-riskyserviceprincipal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-riskyserviceprincipal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-riskyserviceprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-riskyserviceprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-riskyserviceprincipal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-riskyserviceprincipal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "isEnabled": true,
    "isProcessing": false,
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

