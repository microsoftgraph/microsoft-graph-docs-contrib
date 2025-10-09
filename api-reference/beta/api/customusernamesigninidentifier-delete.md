---
title: "Delete customUsernameSignInIdentifier"
description: "Delete a customUsernameSignInIdentifier object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete customUsernameSignInIdentifier

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a customUsernameSignInIdentifier object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "customusernamesigninidentifier-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/signinidentifierbase-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identity/signInIdentifiers/{signInIdentifier-name}
```

## Path parameters

|Parameter|Type|Description|
|:---|:---|:---|
|signInIdentifier-name|String|The name of the sign-in identifier to delete. Supported values for custom username identifiers: `CustomUsername1`, `CustomUsername2`. **Note**: Built-in identifiers (`Email`, `UPN`, `Username`) can't be deleted.|

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

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_customusernamesigninidentifier"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identity/signInIdentifiers/CustomUsername1
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
