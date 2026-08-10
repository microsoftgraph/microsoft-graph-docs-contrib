---
title: "Delete resourceAccountKeyAuthenticationMethod"
description: "Delete a resourceAccountKeyAuthenticationMethod object."
author: "akgoel"
ms.date: 06/23/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete resourceAccountKeyAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [resourceAccountKeyAuthenticationMethod](../resources/resourceaccountkeyauthenticationmethod.md) object.

> [!WARNING]
> Deleting a resource account key authentication method cannot be undone. After deletion, the shared device will no longer be able to authenticate silently using this credential.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "resourceaccountkeyauthenticationmethod-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/resourceaccountkeyauthenticationmethod-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{id | userPrincipalName}/authentication/resourceAccountKeyAuthenticationMethods/{resourceAccountKeyAuthenticationMethodId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

If the credential ID doesn't exist, this method returns a `404 Not Found` error code with an error code of `resourceNotFound`.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_resourceaccountkeyauthenticationmethod",
  "sampleKeys": ["0a3e7ad0-8d1b-4e25-ad43-5b7c7c2b5f6f", "aB3dE5fG7hI9jK1lM3nO5pQ7rS9tU1vW3xY5zA7bC9d1"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/0a3e7ad0-8d1b-4e25-ad43-5b7c7c2b5f6f/authentication/resourceAccountKeyAuthenticationMethods/aB3dE5fG7hI9jK1lM3nO5pQ7rS9tU1vW3xY5zA7bC9d1
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
