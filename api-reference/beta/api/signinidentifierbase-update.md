---
title: "Update signInIdentifierBase"
description: "Update the properties of a signInIdentifierBase object."
author: "Gyanendersinghgithub"
ms.date: 10/02/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update signInIdentifierBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [signInIdentifierBase](../resources/signinidentifierbase.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "signinidentifierbase-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/signinidentifierbase-update-permissions.md)]

[!INCLUDE [rbac-signin-id-apis](../includes/rbac-for-apis/rbac-signin-id-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/signInIdentifiers/{signInIdentifier-name}
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
|name|String|The unique name identifier for this sign-in identifier configuration. Possible values include: `Email`, `UPN`, `Username`, `CustomUsername1`, `CustomUsername2`. Required.|
|isEnabled|Boolean|Indicates whether this sign-in identifier type is enabled for user authentication in the tenant. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [signInIdentifierBase](../resources/signinidentifierbase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request"  
}
-->
``` http
PATCH https://graph.microsoft.com/beta/identity/signInIdentifiers/Email
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.signInIdentifierBase",
  "name": "Email",
  "isEnabled": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.signInIdentifierBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.signInIdentifierBase",
  "name": "Email",
  "isEnabled": true
}
```
