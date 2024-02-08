---
title: "Create federatedTokenValidationPolicy"
description: "Create a new federatedTokenValidationPolicy object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create federatedTokenValidationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policyroot-post-federatedtokenvalidationpolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-post-federatedtokenvalidationpolicy-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.federatedTokenValidationPolicy not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

You can specify the following properties when creating a **federatedTokenValidationPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|validatingDomains|[microsoft.graph.validatingDomains](../resources/validatingdomains.md)|Verified Microsoft Entra ID domains for which Microsoft Entra validates that federated account's root domain matches with mapped Microsoft Entra account's root domain. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_federatedtokenvalidationpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.federatedTokenValidationPolicy not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```


### Response
The following example shows the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.federatedTokenValidationPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "id": "932b8f7f-68c1-6fe5-59ab-56e1ff752f30",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```
