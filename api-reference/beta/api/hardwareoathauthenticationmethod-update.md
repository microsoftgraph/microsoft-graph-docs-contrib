---
title: "Update hardwareOathAuthenticationMethod"
description: "Update the properties of a hardwareOathAuthenticationMethod object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update hardwareOathAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "hardwareoathauthenticationmethod-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
PATCH /users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [authenticationMethod](../resources/authenticationmethod.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_hardwareoathauthenticationmethod"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod"
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
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
  "id": "658d0bfe-3cb9-d4d3-5296-147bc3b1f130",
  "createdDateTime": "String (timestamp)"
}
```

