---
title: "Create authenticationMethodTarget"
description: "Create a new authenticationMethodTarget object."
author: "gregk-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create authenticationMethodTarget

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new authenticationMethodTarget object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalauthenticationmethodconfiguration-post-includetargets-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethodconfiguration-post-includetargets-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /externalAuthenticationMethodConfiguration/includeTargets
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object.

You can specify the following properties when creating an **authenticationMethodTarget**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|targetType|authenticationMethodTargetType|**TODO: Add Description**. The possible values are: `user`, `group`, `unknownFutureValue`, `role`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `role`. Required.|
|isRegistrationRequired|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `201 Created` response code and an [authenticationMethodTarget](../resources/authenticationmethodtarget.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_authenticationmethodtarget_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/externalAuthenticationMethodConfiguration/includeTargets
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authenticationMethodTarget",
  "targetType": "String",
  "isRegistrationRequired": "Boolean"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationMethodTarget"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authenticationMethodTarget",
  "id": "c94b45ed-9c18-3714-dcc6-28d8cb0fcb47",
  "targetType": "String",
  "isRegistrationRequired": "Boolean"
}
```

