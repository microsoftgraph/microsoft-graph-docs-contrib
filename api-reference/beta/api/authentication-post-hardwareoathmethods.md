---
title: "Create hardwareOathAuthenticationMethod"
description: "Assign a hardware token to a user without activation."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create hardwareOathAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "authentication-post-hardwareoathmethods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-post-hardwareoathmethods-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/authentication/hardwareOathMethods
POST /users/{usersId}/authentication/hardwareOathMethods
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.

You can specify the following properties when creating a **hardwareOathAuthenticationMethod**.

|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|ID of the hardware token that is to be assigned to the user and activated.|
|displayName|String|An optional name that can be provided to the Hardware OATH token.|



## Response

If successful, this method returns a `201 Created` response code and a [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_hardwareoathauthenticationmethod_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods
Content-Type: application/json

{
  "device": {
        "id": "aad49556-####-####-####-############"
    },
  "displayName": Amy Masters Token"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.hardwareOathAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
  "id": "658d0bfe-3cb9-d4d3-5296-147bc3b1f130",
  "createdDateTime": "String (timestamp)"
}
```

