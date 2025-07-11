---
title: "Create externalAuthenticationMethod"
description: "Create a new externalAuthenticationMethod object."
author: "rannderson"
ms.date: 04/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create externalAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on other users

<!-- {
  "blockType": "permissions",
  "name": "authentication-post-externalauthenticationmethods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-post-externalauthenticationmethods-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

To assign an external authentication method to another user:
<!-- { "blockType": "ignored" } -->
``` http
POST /users/{usersId}/authentication/externalAuthenticationMethods
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) object.

You can specify the following properties when creating an **externalAuthenticationMethod**.

|Property|Type|Description|
|:---|:---|:---|
|configurationId|String|A unique identifier used to manage and integrate external auth methods within Microsoft Entra ID. Required.|
|displayName|String|Custom name given to the registered external authentication method. Required.|



## Response

If successful, this method returns a `201 Created` response code and an [externalAuthenticationMethod](../resources/externalauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_externalauthenticationmethod_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{id}/authentication/externalAuthenticationMethods
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
  "configurationId": "26310fee-860b-4eab-8749-ab730dcf335e",
  "displayName": "Adatum"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethod",
  "id": "78381c69-811f-51f6-66ec-c2c2aa0e2b46",
  "createdDateTime": "2025-04-02T16:01:39",
  "configurationId": "26310fee-860b-4eab-8749-ab730dcf335e",
  "displayName": "Adatum"
}
```

