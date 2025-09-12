---
title: "What If evaluation"
description: "Evaluates the applicability of Conditional Access Policies based on the provided sign-in properties."
author: "kvenkit"
ms.date: 07/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# conditionalAccessRoot: evaluate

Namespace: microsoft.graph

Evaluates the applicability of Conditional Access Policies in your tenant based on the provided sign-in properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccessroot_evaluate" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-evaluate-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/conditionalAccess/evaluate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters. For the evaluation to provide the most accurate results, include as many details about the sign-in as possible. If your tenant has policies with specific conditions, and the sign-in details for those conditions are missing in the request, the 'What If' tool can't evaluate those conditions.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|signInIdentity|[signInIdentity](../resources/signinidentity.md)|Represents the identity that is authenticating. This can be a user, external user, or single tenant service principal. Required.|
|signInContext|[signInContext](../resources/signincontext.md)|Represents the context of the authentication. This could involve accessing an application, performing a specific user action, or accessing data protected by an authentication context. Required. |
|signInConditions|[signInConditions](../resources/signinconditions.md)|Represents sign-in parameters of the authenticating identity. This includes details such as location, device information, risk information, etc. Required. |
|appliedPoliciesOnly|Boolean|This property controls whether to include all policies in the response or only the policies that would apply to the authentication event. Optional.|



## Response

If successful, this action returns a `200 OK` response code and a [whatIfAnalysisResult](../resources/whatifanalysisresult.md) collection in the response body. The response indicates whether each policy in the tenant would apply or not based on the sign-in properties provided in the request body.

## Examples

### Example 1: Identify conditional access policies that would apply to a user accessing an application

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate_example1"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/evaluate
Content-Type: application/json

{
    "signInIdentity": {
        "@odata.type": "#microsoft.graph.userSignIn",
        "userId": "15dc174b-f34c-4588-ac45-61d6e05dce93"
    },
    "signInContext": {
        "@odata.type": "#microsoft.graph.applicationContext",
        "includeApplications": [
            "00000003-0000-0ff1-ce00-000000000000"
        ]
    },
    "signInConditions": {
        "devicePlatform": "android",
        "clientAppType": "browser",
        "signInRiskLevel": "high",
        "userRiskLevel": "high",
        "country": "US",
        "ipAddress": "40.77.182.32",
        "insiderRiskLevel": "elevated",
        "authenticationFlow": {
            "transferMethod": "deviceCodeFlow"
        },
        "deviceInfo": {
            "isCompliant": true
        }
    },
    "appliedPoliciesOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/conditionalaccessrootthisevaluate-example1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/conditionalaccessrootthisevaluate-example1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/conditionalaccessrootthisevaluate-example1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/conditionalaccessrootthisevaluate-example1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/conditionalaccessrootthisevaluate-example1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/conditionalaccessrootthisevaluate-example1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/conditionalaccessrootthisevaluate-example1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.whatIfAnalysisResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "df9e6f15-2b60-4e78-b990-b2da33a10886",
            "templateId": null,
            "displayName": "All users except au1_Office 365_No conditions_Session control application enforced restrictions",
            "createdDateTime": "2022-04-01T18:55:43.1454565Z",
            "modifiedDateTime": "2025-03-27T21:42:26.951558Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "grantControls": null,
            "partialEnablementStrategy": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "clientApplications": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [
                        "Office365"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "All"
                    ],
                    "excludeUsers": [
                        "f7ca74b0-8562-4083-b66c-0476f942cfd0"
                    ],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "sessionControls": {
                "disableResilienceDefaults": null,
                "cloudAppSecurity": null,
                "signInFrequency": null,
                "persistentBrowser": null,
                "continuousAccessEvaluation": null,
                "secureSignInSession": null,
                "networkAccessSecurity": null,
                "globalSecureAccessFilteringProfile": null,
                "applicationEnforcedRestrictions": {
                    "isEnabled": true
                }
            }
        },
        {
            "id": "37d51c45-8c60-4f82-98e0-6e1451cecf7c",
            "templateId": null,
            "displayName": "All Users except au1_All resources_user risk H_Password change",
            "createdDateTime": "2022-03-31T22:59:59.6688974Z",
            "modifiedDateTime": "2025-03-27T19:55:43.5390544Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [
                    "high"
                ],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "clientApplications": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "All"
                    ],
                    "excludeUsers": [
                        "f7ca74b0-8562-4083-b66c-0476f942cfd0"
                    ],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "grantControls": {
                "operator": "AND",
                "builtInControls": [
                    "mfa",
                    "passwordChange"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": null
            }
        }
    ]
}
```

### Example 2: Identify conditional access policies that would apply to a user accessing a sensitive file protected by an authentication context

#### Request 
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate_example2"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/evaluate
Content-Type: application/json

{
    "signInIdentity": {
        "@odata.type": "#microsoft.graph.userSignIn",
        "userId": "15dc174b-f34c-4588-ac45-61d6e05dce93"
    },
    "signInContext": {
        "@odata.type": "#microsoft.graph.authContext",
        "authenticationContextValue": "c37"
    },
    "signInConditions": {
        "devicePlatform": "windows",
        "clientAppType": "mobileAppsAndDesktopClients",
        "signInRiskLevel": "medium",
        "userRiskLevel": "none",
        "country": "US",
        "ipAddress": "40.77.182.32",
        "insiderRiskLevel": "moderate",
        "authenticationFlow": {
            "transferMethod": "authenticationTransfer"
        },
        "deviceInfo": {
            "profileType": "Standard"
        }
    },
    "appliedPoliciesOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/conditionalaccessrootthisevaluate-example2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/conditionalaccessrootthisevaluate-example2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/conditionalaccessrootthisevaluate-example2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/conditionalaccessrootthisevaluate-example2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/conditionalaccessrootthisevaluate-example2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/conditionalaccessrootthisevaluate-example2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/conditionalaccessrootthisevaluate-example2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.whatIfAnalysisResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json


{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "e897c693-c0e6-4386-abc3-f46dee5940fb",
            "templateId": null,
            "displayName": "All users_auth context_No conditions_Auth strength MFA",
            "createdDateTime": "2023-07-10T17:27:37.9735926Z",
            "modifiedDateTime": "2025-03-27T20:03:41.92628Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "clientApplications": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [
                        "c1",
                        "c37"
                    ],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "All"
                    ],
                    "excludeUsers": [],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "grantControls": {
                "operator": "OR",
                "builtInControls": [],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": {
                    "id": "00000000-0000-0000-0000-000000000002",
                    "createdDateTime": "2021-12-01T08:00:00Z",
                    "modifiedDateTime": "2021-12-01T08:00:00Z",
                    "displayName": "Multifactor authentication",
                    "description": "Combinations of methods that satisfy strong authentication, such as a password + SMS",
                    "policyType": "builtIn",
                    "requirementsSatisfied": "mfa",
                    "allowedCombinations": [
                        "windowsHelloForBusiness",
                        "fido2",
                        "x509CertificateMultiFactor",
                        "deviceBasedPush",
                        "temporaryAccessPassOneTime",
                        "temporaryAccessPassMultiUse",
                        "password,microsoftAuthenticatorPush",
                        "password,softwareOath",
                        "password,hardwareOath",
                        "password,x509CertificateSingleFactor",
                        "password,x509CertificateMultiFactor",
                        "password,sms",
                        "password,voice",
                        "federatedMultiFactor",
                        "microsoftAuthenticatorPush,federatedSingleFactor",
                        "softwareOath,federatedSingleFactor",
                        "hardwareOath,federatedSingleFactor",
                        "sms,federatedSingleFactor",
                        "voice,federatedSingleFactor"
                    ],
                    "combinationConfigurations": []
                }
            }
        }
    ]
}
```

### Example 3: Identify conditional access policies that would apply to a user performing a user action


#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate_example3"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/evaluate
Content-Type: application/json

{
    "signInIdentity": {
        "@odata.type": "#microsoft.graph.userSignIn",
        "userId": "15dc174b-f34c-4588-ac45-61d6e05dce93"
    },
    "signInContext": {
        "@odata.type": "#microsoft.graph.userActionContext",
        "userAction": "registerSecurityInformation"
    },
    "signInConditions": {
        "devicePlatform": "macOS",
        "clientAppType": "browser",
        "signInRiskLevel": "low",
        "userRiskLevel": "high",
        "servicePrincipalRiskLevel": "none",
        "country": "CA",
        "ipAddress": "40.77.182.32",
        "insiderRiskLevel": "minor",
        "authenticationFlow": {
            "transferMethod": "deviceCodeFlow"
        },
        "deviceInfo": {
            "trustType": "EntraID"
        }
    },
    "appliedPoliciesOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/conditionalaccessrootthisevaluate-example3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/conditionalaccessrootthisevaluate-example3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/conditionalaccessrootthisevaluate-example3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/conditionalaccessrootthisevaluate-example3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/conditionalaccessrootthisevaluate-example3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/conditionalaccessrootthisevaluate-example3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/conditionalaccessrootthisevaluate-example3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.whatIfAnalysisResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "37d51c45-8c60-4f82-98e0-6e1451cecf7c",
            "templateId": null,
            "displayName": "All Users except au1_All resources_user risk H_Password change",
            "createdDateTime": "2022-03-31T22:59:59.6688974Z",
            "modifiedDateTime": "2025-03-27T19:55:43.5390544Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [
                    "high"
                ],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "clientApplications": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "All"
                    ],
                    "excludeUsers": [
                        "f7ca74b0-8562-4083-b66c-0476f942cfd0"
                    ],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "grantControls": {
                "operator": "AND",
                "builtInControls": [
                    "mfa",
                    "passwordChange"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": null
            }
        },
        {
            "id": "4aa7d105-d92b-4c07-9834-0e810ddb89ac",
            "templateId": null,
            "displayName": "All admin roles except au1_All resources_No conditions_MFA",
            "createdDateTime": "2022-03-29T20:39:24.3899939Z",
            "modifiedDateTime": "2025-03-27T21:40:19.6686701Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "clientApplications": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [],
                    "excludeUsers": [
                        "f7ca74b0-8562-4083-b66c-0476f942cfd0"
                    ],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [
                        "62e90394-69f5-4237-9190-012177145e10",
                        "194ae4cb-b126-40b2-bd5b-6091b380977d",
                        "f28a1f50-f6e7-4571-818b-6a12f2af6b6c",
                        "29232cdf-9323-42fd-ade2-1d097af3e4de",
                        "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9",
                        "729827e3-9c14-49f7-bb1b-9608f156bbb8",
                        "b0f54661-2d74-4c50-afa3-1ec803f12efe",
                        "fe930be7-5e62-47db-91af-98c3a49a38b1",
                        "c4e39bd9-1100-46d3-8c65-fb160da0071f",
                        "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
                        "158c047a-c907-4556-b7ef-446551a6b5f7",
                        "966707d0-3269-4727-9be2-8c3a10f19b9d",
                        "7be44c8a-adaf-4e2a-84d6-ab2649e08a13",
                        "e8611ab8-c189-46e8-94e1-60213ab1f814"
                    ],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "grantControls": {
                "operator": "OR",
                "builtInControls": [
                    "mfa"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": null
            }
        },
        {
            "id": "11083471-5a50-43ad-90c0-23f1af0869e1",
            "templateId": null,
            "displayName": "All users except au1_User action RS info_No conditions_Auth strenfth MFA",
            "createdDateTime": "2024-10-16T15:06:45.0788027Z",
            "modifiedDateTime": "2025-03-27T20:08:22.6064571Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "clientApplications": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [],
                    "excludeApplications": [],
                    "includeUserActions": [
                        "urn:user:registersecurityinfo"
                    ],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "All"
                    ],
                    "excludeUsers": [
                        "f7ca74b0-8562-4083-b66c-0476f942cfd0"
                    ],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "grantControls": {
                "operator": "OR",
                "builtInControls": [],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": {
                    "id": "00000000-0000-0000-0000-000000000002",
                    "createdDateTime": "2021-12-01T08:00:00Z",
                    "modifiedDateTime": "2021-12-01T08:00:00Z",
                    "displayName": "Multifactor authentication",
                    "description": "Combinations of methods that satisfy strong authentication, such as a password + SMS",
                    "policyType": "builtIn",
                    "requirementsSatisfied": "mfa",
                    "allowedCombinations": [
                        "windowsHelloForBusiness",
                        "fido2",
                        "x509CertificateMultiFactor",
                        "deviceBasedPush",
                        "temporaryAccessPassOneTime",
                        "temporaryAccessPassMultiUse",
                        "password,microsoftAuthenticatorPush",
                        "password,softwareOath",
                        "password,hardwareOath",
                        "password,x509CertificateSingleFactor",
                        "password,x509CertificateMultiFactor",
                        "password,sms",
                        "password,voice",
                        "federatedMultiFactor",
                        "microsoftAuthenticatorPush,federatedSingleFactor",
                        "softwareOath,federatedSingleFactor",
                        "hardwareOath,federatedSingleFactor",
                        "sms,federatedSingleFactor",
                        "voice,federatedSingleFactor"
                    ],
                    "combinationConfigurations": []
                }
            }
        }
    ]
}
```

### Example 4: Identify conditional access policies that apply to a service principal

#### Request 
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate_example4"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identity/conditionalAccess/evaluate
Content-Type: application/json

{
    "signInIdentity": {
        "@odata.type": "#microsoft.graph.servicePrincipalSignIn",
        "servicePrincipalId": "c65b94a5-0049-439a-a6fd-bce307077730"
    },
    "signInContext": {
        "@odata.type": "#microsoft.graph.applicationContext",
        "includeApplications": [
            "00000003-0000-0ff1-ce00-000000000000"
        ]
    },
    "signInConditions": {
        "servicePrincipalRiskLevel": "high",
        "country": "CA",
        "ipAddress": "40.77.182.32"
    },
    "appliedPoliciesOnly": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/conditionalaccessrootthisevaluate-example4-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/conditionalaccessrootthisevaluate-example4-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/conditionalaccessrootthisevaluate-example4-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/conditionalaccessrootthisevaluate-example4-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/conditionalaccessrootthisevaluate-example4-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/conditionalaccessrootthisevaluate-example4-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/conditionalaccessrootthisevaluate-example4-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.whatIfAnalysisResult)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "461478d2-5896-4761-84ba-4d241c396a29",
            "templateId": null,
            "displayName": "All ST SPs_All resources_Any location_Block",
            "createdDateTime": "2022-04-08T19:31:15.6087842Z",
            "modifiedDateTime": "2025-03-27T20:08:54.0912734Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "None"
                    ],
                    "excludeUsers": [],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                },
                "locations": {
                    "includeLocations": [
                        "All"
                    ],
                    "excludeLocations": []
                },
                "clientApplications": {
                    "includeServicePrincipals": [
                        "ServicePrincipalsInMyTenant"
                    ],
                    "excludeServicePrincipals": [],
                    "servicePrincipalFilter": null
                }
            },
            "grantControls": {
                "operator": "OR",
                "builtInControls": [
                    "block"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": null
            }
        },
        {
            "id": "4f1d2ff3-50db-4299-bbdd-0a114c98e97e",
            "templateId": null,
            "displayName": "All ST SPs_All resources_No conditions_Block",
            "createdDateTime": "2025-02-21T07:04:44.777856Z",
            "modifiedDateTime": "2025-03-28T06:15:41.2376665Z",
            "state": "enabledForReportingButNotEnforced",
            "policyApplies": true,
            "analysisReasons": "notSet",
            "partialEnablementStrategy": null,
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "clients": null,
                "platforms": null,
                "locations": null,
                "times": null,
                "deviceStates": null,
                "devices": null,
                "authenticationFlows": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null,
                    "networkAccess": null,
                    "globalSecureAccess": null
                },
                "users": {
                    "includeUsers": [
                        "None"
                    ],
                    "excludeUsers": [],
                    "includeGroups": [],
                    "excludeGroups": [],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                },
                "clientApplications": {
                    "includeServicePrincipals": [
                        "ServicePrincipalsInMyTenant"
                    ],
                    "excludeServicePrincipals": [],
                    "servicePrincipalFilter": null
                }
            },
            "grantControls": {
                "operator": "OR",
                "builtInControls": [
                    "block"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength": null
            }
        }
    ]
}
```
