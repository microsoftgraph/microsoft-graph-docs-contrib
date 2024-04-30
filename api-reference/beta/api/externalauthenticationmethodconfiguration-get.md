---
title: "Get externalAuthenticationMethodConfiguration"
description: "Read the properties and relationships of an externalAuthenticationMethodConfiguration object."
author: "gregkmsft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get externalAuthenticationMethodConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "externalauthenticationmethodconfiguration-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/externalauthenticationmethodconfiguration-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [externalAuthenticationMethodConfiguration](../resources/externalauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_externalauthenticationmethodconfiguration"
}
-->
``` http
https://graph.microsoft.com/beta/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/b3107ab7-68c7-4553-a167-48c1e9c24d52
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalAuthenticationMethodConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
{
  "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
  "id": "b3107ab7-68c7-4553-a167-48c1e9c24d52",
  "displayName": "Adatum",
  "appId": "fb262304-618c-4ffb-878a-114490bdf200",
  "openIdConnectSetting": {
      "clientId": "06a011bd-ec92-4404-80fb-db6d5ada8ee2",
      "discoveryUrl": "https//Adatum.com/.well-known/openid-configuration"
  },
  "state": "disabled",
  "excludeTargets": [],
  "includeTargets": []
}

```

