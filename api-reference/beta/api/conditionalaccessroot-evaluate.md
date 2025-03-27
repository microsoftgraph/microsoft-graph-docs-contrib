---
title: "conditionalAccessRoot: evaluate"
description: "Evaluates the applicability of Conditional Access Policies based on the provided sign-in properties"
author: "kvenkit"
ms.date: 03/21/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Evaluate Conditional Access Policies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluates the applicability of Conditional Access Policies in your tenant based on the provided sign-in properties

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccessroot-evaluate-permissions"
}
-->
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

In the request body, supply a JSON representation of the parameters. For the evaluation to provide accurate results, include as many details about the sign-in as possible. This includes but is not limited to details such as the ip address, country, risk level, device information etc.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|signInIdentity|[signInIdentity](../resources/signinidentity.md)|Defines the identity that is authenticating. This can be a user, external user or single tenant service principal. Required.|
|signInContext|[signInContext](../resources/signincontext.md)|Defines the action perfomed by the authenticating identity. This could be accessing an application, performing a user action or accessing data protected by an authentication context. Required. |
|signInConditions|[signInConditions](../resources/signinconditions.md)|Defines the conditions of the authentication. This includes details sych as location, device information, risk information etc. Required. |
|appliedPoliciesOnly|Boolean|This property controls whether to include all policies in the response or only the policies that would apply to the authentication event. Optional.|



## Response

If successful, this action returns a `200 OK` response code and a [whatIfAnalysisResult](../resources/whatifanalysisresult.md) collection in the response body. The response indicates whether each policy in the tenant would apply or not based on the sign-in properties provided in the request body.

## Examples

### Example 1: Identify conditional access policies that would apply to a user accessing an application. 

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/evaluate
Content-Type: application/json

{
  "signInIdentity": {
    "@odata.type": "#microsoft.graph.userSignIn",
    "userId": "f7ca74b0-8562-4083-b66c-0476f942cfd0"
  },
  "signInContext": {
    "@odata.type": "#microsoft.graph.applicationContext",
    "includeApplications": ["00000003-0000-0ff1-ce00-000000000000"]
  },
  "signInConditions": {
    "clientAppType": "browser",
    "userRiskLevel": "high",
    "country": "US",
    "ipAddress": "40.177.80.9"
  },
  "appliedPoliciesOnly": "true"
}
```


### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "37d51c45-8c60-4f82-98e0-6e1451cecf7c",
            "templateId": null,
            "displayName": "CA008: Require password change for high-risk users",
            "createdDateTime": "2022-03-31T22:59:59.6688974Z",
            "modifiedDateTime": "2024-11-18T17:57:29.3742437Z",
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
                        "d888c9be-6284-4699-bebd-2c5c38ecb706",
                        "d16f032d-eade-42e4-b5f6-d675ad2cc6a7"
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
            "id": "49d6821a-9594-4305-af58-09aaf74a8fee",
            "templateId": null,
            "displayName": "MFA for all users and apps",
            "createdDateTime": "2025-01-14T07:18:19.258663Z",
            "modifiedDateTime": "2025-01-14T18:37:58.7055158Z",
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
                    "excludeApplications": [
                        "d4ebce55-015a-49b5-a083-c84d1797ae8c"
                    ],
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

### Example 2: Identify conditional access policies that would apply to a user accessing a sensitive file protected by an authentication context

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/evaluate
Content-Type: application/json

{
  "signInIdentity": {
    "@odata.type": "#microsoft.graph.userSignIn",
    "userId": "c02d27b1-8e74-445e-af0f-392347494fce"
  },
  "signInContext": {
    "@odata.type": "#microsoft.graph.authContext",
    "authenticationContext": "c37"
  },
  "signInConditions": {
  },
  "appliedPoliciesOnly": true
}
```


### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "e897c693-c0e6-4386-abc3-f46dee5940fb",
            "templateId": null,
            "displayName": "Protected Action",
            "createdDateTime": "2023-07-10T17:27:37.9735926Z",
            "modifiedDateTime": "2025-03-26T03:10:47.990625Z",
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

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/evaluate
Content-Type: application/json

{
  "signInIdentity": {
    "@odata.type": "#microsoft.graph.userSignIn",
    "userId": "c02d27b1-8e74-445e-af0f-392347494fce"
  },
  "signInContext": {
    "@odata.type": "#microsoft.graph.userActionContext",
    "userAction": "registerSecurityInformation"
  },
  "signInConditions": {
  },
  "appliedPoliciesOnly": true
}
```

### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "11083471-5a50-43ad-90c0-23f1af0869e1",
            "templateId": null,
            "displayName": "Require MFA for register security information",
            "createdDateTime": "2024-10-16T15:06:45.0788027Z",
            "modifiedDateTime": "2025-03-26T19:37:35.2284292Z",
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
                        "15dc174b-f34c-4588-ac45-61d6e05dce93",
                        "f7ca74b0-8562-4083-b66c-0476f942cfd0"
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

### Example 4: Identify conditional access policies that apply to a service principal

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "conditionalaccessrootthis.evaluate"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/evaluate
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
    "signInConditions": {},
    "appliedPoliciesOnly": true
}
```


### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.whatIfAnalysisResult)",
    "value": [
        {
            "id": "461478d2-5896-4761-84ba-4d241c396a29",
            "templateId": null,
            "displayName": "Service Principal Policy",
            "createdDateTime": "2022-04-08T19:31:15.6087842Z",
            "modifiedDateTime": "2025-03-21T22:24:11.4371774Z",
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
            "id": "726a6e19-42f8-4549-853f-323fbc769f48",
            "templateId": null,
            "displayName": "RO2",
            "createdDateTime": "2022-04-19T18:14:05.1553761Z",
            "modifiedDateTime": "2022-04-19T19:14:29.9818843Z",
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
        }
    ]
}