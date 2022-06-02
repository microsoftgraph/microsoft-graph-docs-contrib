---
title: "Get temporaryAccessPassAuthenticationMethodConfiguration"
description: "Read the details of the Temporary Access Pass policy for the Azure AD tenant, represented by a temporaryAccessPassAuthenticationMethodConfiguration object."
author: "tilarso"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get temporaryAccessPassAuthenticationMethodConfiguration
Namespace: microsoft.graph

Read the details of the Temporary Access Pass policy for the Azure Active Directory (Azure AD) tenant, represented by a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.AuthenticationMethod|

For delegated scenarios, the administrator needs one of the following [Azure AD roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

* Global Reader
* Authentication Policy Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/temporaryAccessPass
```
## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a [temporaryAccessPassAuthenticationMethodConfiguration](../resources/temporaryaccesspassauthenticationmethodconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_temporaryaccesspassauthenticationmethodconfiguration"
}
-->
```msgraph-interactive
https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/temporaryAccessPass
```

### Response

The following is an example of the response
**Note:** The response object shown here might be shortened for readability.

```http
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#authenticationMethodConfigurations/$entity",
    "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
    "id": "TemporaryAccessPass",
    "state": "enabled",
    "defaultLifetimeInMinutes": 60,
    "defaultLength": 8,
    "minimumLifetimeInMinutes": 60,
    "maximumLifetimeInMinutes": 480,
    "isUsableOnce": false,
    "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration/includeTargets",
    "includeTargets": [
        {
            "targetType": "group",
            "id": "all_users",
            "isRegistrationRequired": false
        }
    ]
}
```