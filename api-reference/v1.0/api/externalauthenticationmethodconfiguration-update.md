---
title: "Update externalAuthenticationMethodConfiguration"
description: "Update the properties of an externalAuthenticationMethodConfiguration object."
author: "gregkmsft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 01/19/2026
---

# Update externalAuthenticationMethodConfiguration

Namespace: microsoft.graph

Update the properties of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externalauthenticationmethodconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethodconfiguration-update-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/{id}
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
|appId|String|**appId** for the app registration in Microsoft Entra ID representing the integration with the external provider.|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups representing the users that should be excluded from the policy. |
|includeTargets|[authenticationMethodTarget](../resources/authenticationMethodTarget.md) collection|Groups representing the users that are included in the policy and that can use the external authentication method. |
|state|authenticationMethodState|The state of the method in the policy. The possible values are: `enabled`, `disabled`. |
|openIdConnectSetting|[openIdConnectSetting](../resources/openidconnectsetting.md)|Object representing the required settings for the OIDC request to the external provider.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_externalauthenticationmethodconfiguration"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/b183b746-e7db-4fa2-bafc-69ecf18850dd
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
  "includeTargets": [
    {
        "targetType": "group",
        "id": "b183b746-e7db-4fa2-bafc-69ecf18850dd",
        "isRegistrationRequired": false,
    }
  ],
  "state": "enabled"
}

```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

