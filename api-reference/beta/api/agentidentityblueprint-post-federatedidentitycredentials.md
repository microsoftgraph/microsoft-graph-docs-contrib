---
title: "Create federatedIdentityCredential"
description: "Create a new federatedIdentityCredential object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Create federatedIdentityCredential

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new federatedIdentityCredential object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-post-federatedidentitycredentials-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-post-federatedidentitycredentials-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /applications/{applicationsId}/federatedIdentityCredentials
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

You can specify the following properties when creating a **federatedIdentityCredential**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Required.|
|issuer|String|**TODO: Add Description** Required.|
|subject|String|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|audiences|String collection|**TODO: Add Description** Required.|
|claimsMatchingExpression|[federatedIdentityExpression](../resources/federatedidentityexpression.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_federatedidentitycredential_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/{applicationsId}/federatedIdentityCredentials
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedIdentityCredential",
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
HTTP/1.1 201 Created
Content-Type: application/json

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
```

