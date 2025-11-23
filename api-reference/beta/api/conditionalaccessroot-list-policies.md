---
title: "List policies"
description: "Retrieve a list of conditionalAccessPolicy objects."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
ms.custom: sfi-ga-nochange
---

# List policies

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) objects.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccessroot_list_policies" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-list-policies-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/conditionalAccess/policies
```

## Optional query parameters

This method supports the `$skip`, `$top`, `$count`, `$filter`, `$orderby`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) objects in the response body.

## Examples

### Example 1

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_policies"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/identity/conditionalAccess/policies?$filter=displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-policies-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-policies-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-policies-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-policies-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-policies-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-policies-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json


{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/policies",
    "value": [
        {
            "id": "2b31ac51-b855-40a5-a986-0a4ed23e9008",
            "templateId": null,
            "displayName": "CA001: Require multi-factor authentication for admins",
            "createdDateTime": "2021-11-02T14:17:09.1686157Z",
            "modifiedDateTime": "2024-01-03T20:07:59.0369305Z",
            "state": "enabled",
            "sessionControls": null,
            "conditions": {
                "userRiskLevels": [],
                "signInRiskLevels": [],
                "clientAppTypes": [
                    "all"
                ],
                "servicePrincipalRiskLevels": [],
                "insiderRiskLevels": null,
                "platforms": null,
                "locations": null,
                "devices": null,
                "clientApplications": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null
                },
                "users": {
                    "includeUsers": [],
                    "excludeUsers": [],
                    "includeGroups": [],
                    "excludeGroups": [
                        "eedad040-3722-4bcb-bde5-bc7c857f4983"
                    ],
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
                        "e8611ab8-c189-46e8-94e1-60213ab1f814",
                        "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
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
                "authenticationStrength@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/conditionalAccessPolicies('2b31ac51-b855-40a5-a986-0a4ed23e9008')/grantControls/authenticationStrength/$entity",
                "authenticationStrength": null
            }
        },
        {
            "id": "10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67",
            "templateId": null,
            "displayName": "CA008: Require password change for high-risk users",
            "createdDateTime": "2021-11-02T14:26:29.1005248Z",
            "modifiedDateTime": "2024-01-30T23:11:08.549481Z",
            "state": "enabled",
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
                "platforms": null,
                "locations": null,
                "devices": null,
                "clientApplications": null,
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [],
                    "includeUserActions": [],
                    "includeAuthenticationContextClassReferences": [],
                    "applicationFilter": null
                },
                "users": {
                    "includeUsers": [
                        "All"
                    ],
                    "excludeUsers": [],
                    "includeGroups": [],
                    "excludeGroups": [
                        "eedad040-3722-4bcb-bde5-bc7c857f4983"
                    ],
                    "includeRoles": [],
                    "excludeRoles": [],
                    "includeGuestsOrExternalUsers": null,
                    "excludeGuestsOrExternalUsers": null
                }
            },
            "grantControls": {
                "operator": "AND",
                "builtInControls": [
                    "passwordChange"
                ],
                "customAuthenticationFactors": [],
                "termsOfUse": [],
                "authenticationStrength@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/conditionalAccessPolicies('10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67')/grantControls/authenticationStrength/$entity",
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
                        "password,sms",
                        "password,voice",
                        "federatedMultiFactor",
                        "microsoftAuthenticatorPush,federatedSingleFactor",
                        "softwareOath,federatedSingleFactor",
                        "hardwareOath,federatedSingleFactor",
                        "sms,federatedSingleFactor",
                        "voice,federatedSingleFactor"
                    ],
                    "combinationConfigurations@odata.context": "https://graph.microsoft.com/beta/$metadata#policies/conditionalAccessPolicies('10ef4fe6-5e51-4f5e-b5a2-8fed19d0be67')/grantControls/authenticationStrength/combinationConfigurations",
                    "combinationConfigurations": []
                }
            },
            "sessionControls": {
                "disableResilienceDefaults": null,
                "applicationEnforcedRestrictions": null,
                "cloudAppSecurity": null,
                "persistentBrowser": null,
                "signInFrequency": {
                    "value": null,
                    "type": null,
                    "authenticationType": "primaryAndSecondaryAuthentication",
                    "frequencyInterval": "everyTime",
                    "isEnabled": true
                }
            }
        }
    ]
}
```

### Example 2

The following example shows a request to list all enabled policies scoped to agents (where agents are the actors). The response will list all CA policies scoped to agent identities and agent users.

```http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/policies?$count=true&$filter=state eq 'enabled' and (conditions/clientApplications/includeAgentIdServicePrincipals/any() or conditions/clientApplications/excludeAgentIdServicePrincipals/any() or conditions/clientApplications/agentIdServicePrincipalFilter ne null or conditions/users/includeUsers/any(includeUsers:includeUsers in ('AllAgentIdUsers')))
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "128c8c73-0a52-4f16-94ab-55f640d0fe1f",
            "displayName": "Block all unapproved agents",
            "state": "enabledForReportingButNotEnforced",
            "createdDateTime": "2025-10-01T07:40:06Z",
            "conditions": {
                "applications": {
                    "includeApplications": [
                        "All"
                    ],
                    "excludeApplications": [
                        "Office365"
                    ]
                },
                "clientApplications": {
                    "agentIdServicePrincipalFilter": {
                        "mode": "include",
                        "rule": "CustomSecurityAttribute.ConditionalAccess_isApproved -contains \"False\""
                    }
                },
                "users": {
                    "includeUsers": [
                        "None"
                    ]
                }
            },
            "grantControls": {
                "builtInControls": [
                    "block"
                ]
            }
        },
        {
            "id": "1318e96f-b473-4e7f-91dd-bf0b0a8d18dd",
            "displayName": "Block all agent users from accessing resources",
            "state": "enabled",
            "createdDateTime": "2025-10-31T06:10:04Z",
            "conditions": {
                "applications": {
                    "includeApplications": [
                        "All"
                    ]
                },
                "users": {
                    "includeUsers": [
                        "AllAgentIdUsers"
                    ]
                }
            },
            "grantControls": {
                "builtInControls": [
                    "block"
                ]
            }
        }
    ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List policies",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


