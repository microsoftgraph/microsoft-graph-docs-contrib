---
title: "Get authenticationMethodsPolicy"
description: "Read the properties and relationships of an authenticationMethodsPolicy object."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get authenticationMethodsPolicy
Namespace: microsoft.graph

Read the properties and relationships of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationmethodspolicy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationmethodspolicy-get-permissions.md)]

[!INCLUDE [rbac-authentication-methods-policy-apis-read](../includes/rbac-for-apis/rbac-authentication-methods-policy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationMethodsPolicy
```

## Optional query parameters
This method does not support any optional query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_authenticationmethodspolicy"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/authenticationMethodsPolicy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-authenticationmethodspolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-authenticationmethodspolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-authenticationmethodspolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-authenticationmethodspolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-authenticationmethodspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-authenticationmethodspolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-authenticationmethodspolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-authenticationmethodspolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationMethodsPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#authenticationMethodsPolicy",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET policies/authenticationMethodsPolicy?$select=description,displayName",
    "id": "authenticationMethodsPolicy",
    "displayName": "Authentication Methods Policy",
    "description": "The tenant-wide policy that controls which authentication methods are allowed in the tenant, authentication method registration requirements, and self-service password reset settings",
    "lastModifiedDateTime": "2024-04-26T12:44:42.0858664Z",
    "policyVersion": "1.5",
    "policyMigrationState": "preMigration",
    "registrationEnforcement": {
        "authenticationMethodsRegistrationCampaign": {
            "snoozeDurationInDays": 1,
            "enforceRegistrationAfterAllowedSnoozes": true,
            "state": "disabled",
            "excludeTargets": [],
            "includeTargets": [
                {
                    "id": "all_users",
                    "targetType": "group",
                    "targetedAuthenticationMethod": "microsoftAuthenticator"
                }
            ]
        }
    },
    "systemCredentialPreferences": {
        "state": "disabled",
        "excludeTargets": [],
        "includeTargets": [
            {
                "id": "all_users",
                "targetType": "group"
            }
        ]
    },
    "reportSuspiciousActivitySettings": {
        "state": "disabled",
        "voiceReportingCode": 0,
        "includeTarget": {
            "id": "all_users",
            "targetType": "group"
        }
    },
    "authenticationMethodConfigurations@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations",
    "authenticationMethodConfigurations": [
        {
            "@odata.type": "#microsoft.graph.fido2AuthenticationMethodConfiguration",
            "id": "Fido2",
            "state": "enabled",
            "isSelfServiceRegistrationAllowed": true,
            "isAttestationEnforced": true,
            "defaultPasskeyProfile": null,
            "excludeTargets": [
                {
                    "id": "dad4ae4a-730c-4e52-826c-0d9094971f04",
                    "targetType": "group"
                }
            ],
            "keyRestrictions": {
                "isEnforced": false,
                "enforcementType": "block",
                "aaGuids": []
            },
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Fido2')/microsoft.graph.fido2AuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false,
                    "allowedPasskeyProfiles": []
                }
            ],
            "passkeyProfiles": []
        },
        {
            "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration",
            "id": "MicrosoftAuthenticator",
            "state": "enabled",
            "isSoftwareOathEnabled": false,
            "excludeTargets": [
                {
                    "id": "dad4ae4a-730c-4e52-826c-0d9094971f04",
                    "targetType": "group"
                }
            ],
            "featureSettings": {
                "companionAppAllowedState": {
                    "state": "default",
                    "includeTarget": {
                        "targetType": "group",
                        "id": "all_users"
                    },
                    "excludeTarget": {
                        "targetType": "group",
                        "id": "00000000-0000-0000-0000-000000000000"
                    }
                },
                "numberMatchingRequiredState": {
                    "state": "enabled",
                    "includeTarget": {
                        "targetType": "group",
                        "id": "all_users"
                    },
                    "excludeTarget": {
                        "targetType": "group",
                        "id": "00000000-0000-0000-0000-000000000000"
                    }
                },
                "displayAppInformationRequiredState": {
                    "state": "default",
                    "includeTarget": {
                        "targetType": "group",
                        "id": "all_users"
                    },
                    "excludeTarget": {
                        "targetType": "group",
                        "id": "00000000-0000-0000-0000-000000000000"
                    }
                },
                "displayLocationInformationRequiredState": {
                    "state": "default",
                    "includeTarget": {
                        "targetType": "group",
                        "id": "all_users"
                    },
                    "excludeTarget": {
                        "targetType": "group",
                        "id": "00000000-0000-0000-0000-000000000000"
                    }
                }
            },
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('MicrosoftAuthenticator')/microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false,
                    "authenticationMode": "any"
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.smsAuthenticationMethodConfiguration",
            "id": "Sms",
            "state": "disabled",
            "excludeTargets": [],
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Sms')/microsoft.graph.smsAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false,
                    "isUsableForSignIn": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration",
            "id": "TemporaryAccessPass",
            "state": "enabled",
            "defaultLifetimeInMinutes": 60,
            "defaultLength": 8,
            "minimumLifetimeInMinutes": 60,
            "maximumLifetimeInMinutes": 480,
            "isUsableOnce": false,
            "excludeTargets": [
                {
                    "id": "dad4ae4a-730c-4e52-826c-0d9094971f04",
                    "targetType": "group"
                }
            ],
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('TemporaryAccessPass')/microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethodConfiguration",
            "id": "HardwareOath",
            "state": "enabled",
            "excludeTargets": [],
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('HardwareOath')/microsoft.graph.hardwareOathAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.softwareOathAuthenticationMethodConfiguration",
            "id": "SoftwareOath",
            "state": "enabled",
            "excludeTargets": [],
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('SoftwareOath')/microsoft.graph.softwareOathAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "dad4ae4a-730c-4e52-826c-0d9094971f04",
                    "isRegistrationRequired": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.voiceAuthenticationMethodConfiguration",
            "id": "Voice",
            "state": "disabled",
            "isOfficePhoneAllowed": false,
            "callerIdNumber": null,
            "isCustomGreetingEnabled": false,
            "excludeTargets": [],
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Voice')/microsoft.graph.voiceAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.emailAuthenticationMethodConfiguration",
            "id": "Email",
            "state": "disabled",
            "allowExternalIdToUseEmailOtp": "default",
            "excludeTargets": [],
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('Email')/microsoft.graph.emailAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "d2d5bae7-a7b7-4581-8d52-5a8d26f517b3",
                    "isRegistrationRequired": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
            "id": "X509Certificate",
            "state": "enabled",
            "excludeTargets": [],
            "certificateUserBindings": [
                {
                    "x509CertificateField": "PrincipalName",
                    "userProperty": "userPrincipalName",
                    "priority": 1,
                    "trustAffinityLevel": "low"
                },
                {
                    "x509CertificateField": "RFC822Name",
                    "userProperty": "userPrincipalName",
                    "priority": 2,
                    "trustAffinityLevel": "low"
                }
            ],
            "authenticationModeConfiguration": {
                "x509CertificateAuthenticationDefaultMode": "x509CertificateSingleFactor",
                "x509CertificateDefaultRequiredAffinityLevel": "low",
                "rules": []
            },
            "issuerHintsConfiguration": {
                "state": "disabled"
            },
            "crlValidationConfiguration": {
                "state": "disabled",
                "exemptedCertificateAuthoritiesSubjectKeyIdentifiers": []
            },
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('X509Certificate')/microsoft.graph.x509CertificateAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "eb2aa918-770c-40b4-97b8-f58a0087f8b5",
                    "isRegistrationRequired": false
                },
                {
                    "targetType": "group",
                    "id": "d97d81ce-74be-46a4-ba6e-62eed46fabb9",
                    "isRegistrationRequired": false
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.externalAuthenticationMethodConfiguration",
            "id": "fda55161-0d73-48ec-b29f-d29689e3d1b6",
            "state": "enabled",
            "displayName": "Adatum - Broken",
            "appId": "73f7c26a-7a24-4408-adfa-ff1ff19b5c10",
            "excludeTargets": [
                {
                    "id": "18c6ce0e-243f-4130-ad7d-d9049806df0e",
                    "targetType": "group"
                }
            ],
            "openIdConnectSetting": {
                "clientId": "966c7a17-8cb9-47a6-8504-c1e50b05f21d",
                "discoveryUrl": "https://Adatum.com/.well-known/openid-configurationx"
            },
            "includeTargets@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/authenticationMethodsPolicy/authenticationMethodConfigurations('fda55161-0d73-48ec-b29f-d29689e3d1b6')/microsoft.graph.externalAuthenticationMethodConfiguration/includeTargets",
            "includeTargets": [
                {
                    "targetType": "group",
                    "id": "all_users",
                    "isRegistrationRequired": false
                }
            ]
        }
    ]
}
```
