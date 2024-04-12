---
title: "Update externalAuthenticationMethodConfiguration"
description: "Update the properties of an externalAuthenticationMethodConfiguration object."
author: "gregk-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update externalAuthenticationMethodConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalauthenticationmethodconfiguration-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethodconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /externalAuthenticationMethodConfiguration
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
|state|authenticationMethodState|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). The possible values are: `enabled`, `disabled`. Optional.|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|**TODO: Add Description** Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md). Optional.|
|displayName|String|**TODO: Add Description** Required.|
|appId|String|**TODO: Add Description** Required.|
|openIdConnectSetting|[openIdConnectSetting](../resources/openidconnectsetting.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_externalauthenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/externalAuthenticationMethodConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "displayName": "String",
  "appId": "String",
  "openIdConnectSetting": {
    "@odata.type": "microsoft.graph.openIdConnectSetting"
  }
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
  "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
  "id": "2832c576-4d71-6df6-3d62-de9be9455558",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "displayName": "String",
  "appId": "String",
  "openIdConnectSetting": {
    "@odata.type": "microsoft.graph.openIdConnectSetting"
  }
}
```

