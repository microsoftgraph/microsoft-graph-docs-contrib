---
title: "List history of riskyServicePrincipal"
description: "Get the risk history of a riskyServicePrincipal object."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List history
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the risk history of a [riskyServicePrincipal](../resources/riskyServicePrincipal.md) object.

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
GET /identityProtection/riskyServicePrincipals/{riskyServicePrincipalId}/history 
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [riskyServicePrincipalHistoryItem](../resources/riskyserviceprincipalhistoryitem.md) objects in the response body.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "list_riskyserviceprincipalhistoryitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProtection/riskyServicePrincipals/{riskyServicePrincipalId}/history
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.riskyServicePrincipalHistoryItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#riskyServicePrincipalHistoryItem",
  "value": [
    {
       "id": "0fbef39d-9e8c-460b-444e-8ae5abcdffd7",
       "accountEnabled": true,
       "isProcessing": false,
       "riskLastUpdatedDateTime": "2021-10-20T01:14:37.7214159Z",
       "riskState": "atRisk",
       "riskDetail": "none",
       "riskLevel": "high",
       "displayName": "Contoso App",
       "appId": "ede08db0-9492-4a0c-8ae3-8ggg056c5d75",
       "servicePrincipalType": "Application",
       "servicePrincipalId": "0fbef39d-9e8c-777b-860e-8ae5abcdffd7",
       "initiatedBy": null,
       "activity": null
     }
  ]
}
```
