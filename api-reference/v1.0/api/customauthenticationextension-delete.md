---
title: "Delete customAuthenticationExtension"
description: "Delete a customAuthenticationExtension object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete customAuthenticationExtension
Namespace: microsoft.graph

Delete a [customAuthenticationExtension](../resources/customauthenticationextension.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customauthenticationextension_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/customauthenticationextension-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "delete_customauthenticationextension"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/identity/customAuthenticationExtensions/5c82815a-ee61-4c9b-9f4b-914a708a0c68
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

