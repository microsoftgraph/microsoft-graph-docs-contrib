---
title: "Update temporaryAccessPassAuthenticationMethodConfiguration"
description: "Update the Temporary Access Pass policy for the Azure AD tenant, represented by a temporaryAccessPassAuthenticationMethodConfiguration object."
author: "tilarso"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update temporaryAccessPassAuthenticationMethodConfiguration
Namespace: microsoft.graph

Update the Temporary Access Pass policy for the Azure AD tenant, represented by a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.AuthenticationMethod|

For delegated scenarios, the administrator needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

* Authentication Policy Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/TemporaryAccessPass
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object with the values of fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

All properties of the object can be updated. For a list of properties, see [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md).

> [!NOTE]
> The **@odata.type** property with a value of `#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration` must be included in the request body.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_temporaryaccesspassauthenticationmethodconfiguration"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/temporaryAccessPass
Content-Type: application/json

{
  "isUsableOnce": true
}
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```