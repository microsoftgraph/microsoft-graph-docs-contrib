---
title: "Get federatedTokenValidationPolicy"
description: "Read the properties and relationships of a federatedTokenValidationPolicy object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get federatedTokenValidationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "federatedtokenvalidationpolicy-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/federatedtokenvalidationpolicy-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/federatedTokenValidationPolicy
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

If successful, this method returns a `200 OK` response code and a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_federatedtokenvalidationpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/federatedTokenValidationPolicy
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#Microsoft.DirectoryServices.federatedTokenValidationPolicy",
    "id": "932b8f7f-68c1-6fe5-59ab-56e1ff752f30",
    "deletedDateTime": "String (timestamp)",
    "validatingDomains": {
      "@odata.type": "microsoft.graph.validatingDomains"
    }
  }
}
```
