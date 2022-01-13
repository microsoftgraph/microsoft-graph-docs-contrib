---
title: "riskyServicePrincipal: dismiss"
description: "Dismiss the risk of one or more riskyServicePrincipal objects."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# riskyServicePrincipal: dismiss
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]



Dismiss the risk of one or more [riskyServicePrincipal](../resources/riskyserviceprincipal.md) objects. This action sets the targeted service principal account's risk level to `none`. You can dismiss up to 60 service principal accounts in one request.

>**Note:** Using the riskyServicePrincipal API requires an Azure AD Premium P2 license.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|IdentityRiskyServicePrincipal.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|IdentityRiskyServicePrincipal.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityProtection/riskyServicePrincipals/dismiss
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
In the request body, specify the servicePrincipalIds to dismiss. 

## Response

If successful, this action returns a `204 No Content` response code. It does not return anything in the response body.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "riskyserviceprincipal_dismiss"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityProtection/riskyServicePrincipals/dismiss
Content-Type: application/json

{
  "servicePrincipalIds": [
    "9089a539-a539-9089-39a5-899039a58990"
  ]
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

