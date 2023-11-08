---
title: "List federatedTokenValidationPolicies"
description: "Get a list of the federatedTokenValidationPolicy objects and their properties."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List federatedTokenValidationPolicies
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policyroot-list-federatedtokenvalidationpolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-list-federatedtokenvalidationpolicy-permissions.md)]
# List federatedTokenValidationPolicies
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policyroot-list-federatedtokenvalidationpolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-list-federatedtokenvalidationpolicy-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for Microsoft.DirectoryServices.federatedTokenValidationPolicy not found
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_federatedtokenvalidationpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.federatedTokenValidationPolicy not found
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.federatedTokenValidationPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.federatedTokenValidationPolicy",
      "id": "932b8f7f-68c1-6fe5-59ab-56e1ff752f30",
      "deletedDateTime": "String (timestamp)",
      "validatingDomains": {
        "@odata.type": "microsoft.graph.validatingDomains"
      }
    }
  ]
}
```

