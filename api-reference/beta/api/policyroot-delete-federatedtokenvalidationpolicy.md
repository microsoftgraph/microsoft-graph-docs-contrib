---
title: "Delete federatedTokenValidationPolicy"
description: "Delete a federatedTokenValidationPolicy object."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete federatedTokenValidationPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [federatedTokenValidationPolicy](../resources/federatedtokenvalidationpolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policyroot-delete-federatedtokenvalidationpolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-delete-federatedtokenvalidationpolicy-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/federatedTokenValidationPolicy/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_federatedtokenvalidationpolicy"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/federatedTokenValidationPolicy
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
HTTP/1.1 204 No Content
```

