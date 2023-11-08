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
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
POST ** Collection URI for Microsoft.DirectoryServices.federatedTokenValidationPolicy not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

You can specify the following properties when creating a **federatedTokenValidationPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|validatingDomains|[Microsoft.DirectoryServices.validatingDomains](../resources/validatingdomains.md)|Verified Microsoft Entra ID domains for which Microsoft Entra validates that federated account's root domain matches with mapped Microsoft Entra account's root domain. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_federatedtokenvalidationpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.federatedTokenValidationPolicy not found
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.federatedTokenValidationPolicy",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.federatedTokenValidationPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.federatedTokenValidationPolicy",
  "id": "932b8f7f-68c1-6fe5-59ab-56e1ff752f30",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```
