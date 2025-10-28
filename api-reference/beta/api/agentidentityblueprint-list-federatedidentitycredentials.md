---
title: "List federatedIdentityCredentials"
description: "**TODO: Add a useful description.**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List federatedIdentityCredentials

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add a useful description.**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-list-federatedidentitycredentials-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-list-federatedidentitycredentials-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{applicationsId}/federatedIdentityCredentials
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [federatedIdentityCredential](../resources/federatedidentitycredential.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_federatedidentitycredential"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/{applicationsId}/federatedIdentityCredentials
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.federatedIdentityCredential"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.federatedIdentityCredential",
      "id": "adab08eb-b523-3601-d455-7dffb7c44a9b",
      "name": "String",
      "issuer": "String",
      "subject": "String",
      "description": "String",
      "audiences": [
        "String"
      ],
      "claimsMatchingExpression": {
        "@odata.type": "microsoft.graph.federatedIdentityExpression"
      }
    }
  ]
}
```

