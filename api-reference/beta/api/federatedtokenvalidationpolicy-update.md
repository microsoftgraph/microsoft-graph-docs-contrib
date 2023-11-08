---
title: "Update federatedTokenValidationPolicy"
description: "Update the properties of a federatedTokenValidationPolicy object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update federatedTokenValidationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "federatedtokenvalidationpolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/federatedtokenvalidationpolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/federatedTokenValidationPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|validatingDomains|[Microsoft.DirectoryServices.validatingDomains](../resources/validatingdomains.md)|Verified Microsoft Entra ID domains for which Microsoft Entra validates that federated account's root domain matches with mapped Microsoft Entra account's root domain. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_federatedtokenvalidationpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/federatedTokenValidationPolicy
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "deletedDateTime": "String (timestamp)",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.federatedTokenValidationPolicy",
  "id": "932b8f7f-68c1-6fe5-59ab-56e1ff752f30",
  "deletedDateTime": "String (timestamp)",
  "validatingDomains": {
    "@odata.type": "microsoft.graph.validatingDomains"
  }
}
```

