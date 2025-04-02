---
title: "Update externalAuthenticationMethod"
description: "Update the properties of an externalAuthenticationMethod object."
author: "rannderson"
ms.date: 04/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update externalAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an externalAuthenticationMethod object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalauthenticationmethod-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethod-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/authentication/externalAuthenticationMethods/{externalAuthenticationMethodId}
PATCH /users/{usersId}/authentication/externalAuthenticationMethods/{externalAuthenticationMethodId}
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
|createdDateTime|DateTimeOffset|Represents the date and time when an entity was created. Inherited from [authenticationMethod](../resources/authenticationmethod.md). Optional.|
|configurationId|String|A unique identifier used to manage and integrate external auth methods within Microsoft Entra ID. Required.|
|displayName|String|Custom name given to the registered external authentication method. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_externalauthenticationmethod"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/authentication/externalAuthenticationMethods/{externalAuthenticationMethodId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
  "configurationId": "String",
  "displayName": "String"
}
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
  "id": "78381c69-811f-51f6-66ec-c2c2aa0e2b46",
  "createdDateTime": "String (timestamp)",
  "configurationId": "String",
  "displayName": "String"
}
```

