---
title: "Update x509CertificateAuthenticationMethodConfiguration"
description: "Update the properties of a x509CertificateAuthenticationMethodConfiguration object."
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update x509CertificateAuthenticationMethodConfiguration
Namespace: microsoft.graph

Update the properties of the [X.509 certificate authentication method](../resources/x509certificateauthenticationmethodconfiguration.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [rbac-authentication-methods-policy-apis-write](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-write.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationMethodsPolicy/authenticationMethodConfigurations/x509Certificate
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
The following properties can be updated.

|Property|Type|Description|
|:---|:---|:---|
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|certificateUserBindings|[x509CertificateUserBinding](../resources/x509certificateuserbinding.md) collection|Defines fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user. The **priority** of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored. |
|authenticationModeConfiguration|[x509CertificateAuthenticationModeConfiguration](../resources/x509certificateauthenticationmodeconfiguration.md)|Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings. |

>**Note:** The `@odata.type` property with a value of `#microsoft.graph.x509CertificateAuthenticationMethodConfiguration` must be included in the body.


## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
The following is an example of an update request with the following settings:

+ Enables the x509 certificate authentication method in the tenant.
+ Configures only one user binding between the certificate **PrincipalName** and the Azure AD **onPremisesUserPrincipalName** properties.
+ Defines multi-factor authentication as requirement.
+ Configures the binding rules for the strong authentication method against the rule type.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_x509certificateauthenticationmethodconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/x509Certificate
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
    "id": "X509Certificate",
    "state": "enabled",
    "certificateUserBindings": [
        {
            "x509CertificateField": "PrincipalName",
            "userProperty": "onPremisesUserPrincipalName",
            "priority": 1
        }
    ],
    "authenticationModeConfiguration": {
        "x509CertificateAuthenticationDefaultMode": "x509CertificateMultiFactor",
        "rules": [
            {
                "x509CertificateRuleType": "issuerSubject",
                "identifier": "CN=ContosoCA,DC=Contoso,DC=org ",
                "x509CertificateAuthenticationMode": "x509CertificateMultiFactor"
            },
            {
                "x509CertificateRuleType": "policyOID",
                "identifier": "1.2.3.4",
                "x509CertificateAuthenticationMode": "x509CertificateMultiFactor"
            }
        ]
    },
    "includeTargets": [
        {
            "targetType": "group",
            "id": "all_users",
            "isRegistrationRequired": false
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-x509certificateauthenticationmethodconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-x509certificateauthenticationmethodconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-x509certificateauthenticationmethodconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-x509certificateauthenticationmethodconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-x509certificateauthenticationmethodconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-x509certificateauthenticationmethodconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```

