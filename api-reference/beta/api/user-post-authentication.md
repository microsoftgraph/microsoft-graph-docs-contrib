---
title: "Create authentication"
description: "Create a new authentication object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create authentication

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [authentication](../resources/authentication.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "user-post-authentication-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/user-post-authentication-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.authentication not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [authentication](../resources/authentication.md) object.

You can specify the following properties when creating an **authentication**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|signInPreferences|[signInPreferences](../resources/signinpreferences.md)|**TODO: Add Description** Optional.|
|requirements|[strongAuthenticationRequirements](../resources/strongauthenticationrequirements.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [authentication](../resources/authentication.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_authentication_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.authentication not found
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authentication",
  "signInPreferences": {
    "@odata.type": "microsoft.graph.signInPreferences"
  },
  "requirements": {
    "@odata.type": "microsoft.graph.strongAuthenticationRequirements"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authentication"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authentication",
  "id": "608d62cf-89e2-3945-21ce-c8b18397b959",
  "signInPreferences": {
    "@odata.type": "microsoft.graph.signInPreferences"
  },
  "requirements": {
    "@odata.type": "microsoft.graph.strongAuthenticationRequirements"
  }
}
```

