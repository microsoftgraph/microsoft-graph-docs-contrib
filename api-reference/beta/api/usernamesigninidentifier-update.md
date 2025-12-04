---
title: "Update usernameSignInIdentifier"
description: "Update the properties of a usernameSignInIdentifier object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update usernameSignInIdentifier

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [usernameSignInIdentifier](../resources/usernamesigninidentifier.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "usernamesigninidentifier_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/usernamesigninidentifier-update-permissions.md)]

[!INCLUDE [rbac-signin-id-apis](../includes/rbac-for-apis/rbac-signin-id-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/signInIdentifiers/Username
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|name|String|The unique name identifier for this username sign-in identifier configuration. Always set to "Username" for this identifier type. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md). Required.|
|isEnabled|Boolean|Indicates whether this username sign-in identifier type is enabled for user authentication in the tenant. Inherited from [signInIdentifierBase](../resources/signinidentifierbase.md). Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [usernameSignInIdentifier](../resources/usernamesigninidentifier.md) object in the response body.

## Examples

### Request

The following example shows a request that enables username as a sign-in identifier.
<!-- {
  "blockType": "request"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/signInIdentifiers/Username
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.usernameSignInIdentifier",
  "name": "Username",
  "isEnabled": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.usernameSignInIdentifier"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.usernameSignInIdentifier",
  "name": "Username",
  "isEnabled": true
}
```
