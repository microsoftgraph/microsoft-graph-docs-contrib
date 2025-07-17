---
title: "List conditionalAccessTemplates"
description: "Get a list of the conditionalAccessTemplate objects and their properties."
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
ms.custom: sfi-ga-nochange
---

# List conditionalAccessTemplates
Namespace: microsoft.graph

Get a list of the [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccessroot_list_templates" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-list-templates-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/templates
```

## Optional query parameters
This method supports the `$filter` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Name            |Description|
|:----------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language | Language. Optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) objects in the response body.

## Examples

### Example 1: List all conditional access policy templates

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_conditionalaccesstemplate"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/templates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-conditionalaccesstemplate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-conditionalaccesstemplate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-conditionalaccesstemplate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-conditionalaccesstemplate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-conditionalaccesstemplate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-conditionalaccesstemplate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-conditionalaccesstemplate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-conditionalaccesstemplate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.conditionalAccessTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/templates",
    "value": [
        {
            "name": "Require multifactor authentication for admins",
            "description": "Require multifactor authentication for privileged administrative accounts to reduce risk of compromise. This policy will target the same roles as Security Default.",
            "id": "c7503427-338e-4c5e-902d-abe252abfb43",
            "scenarios": "secureFoundation,zeroTrust,protectAdmins",
            "details": {
                "sessionControls": null,
                "conditions": {
                    "userRiskLevels": [],
                    "signInRiskLevels": [],
                    "clientAppTypes": [
                        "all"
                    ],
                    "servicePrincipalRiskLevels": [],
                    "platforms": null,
                    "locations": null,
                    "signInRiskDetections": null,
                    "times": null,
                    "deviceStates": null,
                    "devices": null,
                    "clientApplications": null,
                    "applications": {
                        "includeApplications": [
                            "All"
                        ],
                        "excludeApplications": [],
                        "includeUserActions": [],
                        "includeAuthenticationContextClassReferences": [],
                        "applicationFilter": null,
                        "networkAccess": null
                    },
                    "users": {
                        "includeUsers": [],
                        "excludeUsers": [
                            "Current administrator will be excluded"
                        ],
                        "includeGroups": [],
                        "excludeGroups": [],
                        "includeRoles": [
                            "62e90394-69f5-4237-9190-012177145e10",
                            "194ae4cb-b126-40b2-bd5b-6091b380977d"
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
            }
        }
    ]
}
```

### Example 2: List name, description, id, scenarios of templates whose scenarios contain "secureFoundation"

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_conditionalaccesstemplate_select"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/templates?$select=name,description,id,scenarios&$filter=scenarios has 'secureFoundation'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-conditionalaccesstemplate-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-conditionalaccesstemplate-select-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-conditionalaccesstemplate-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-conditionalaccesstemplate-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-conditionalaccesstemplate-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-conditionalaccesstemplate-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-conditionalaccesstemplate-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-conditionalaccesstemplate-select-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.conditionalAccessTemplate)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/conditionalAccess/templates(name,description,id,scenarios)",
    "value": [
        {
            "name": "Require multifactor authentication for admins",
            "description": "Require multifactor authentication for privileged administrative accounts to reduce risk of compromise. This policy will target the same roles as Security Default.",
            "id": "c7503427-338e-4c5e-902d-abe252abfb43",
            "scenarios": "secureFoundation,zeroTrust,protectAdmins"
        },
        {
            "name": "Securing security info registration",
            "description": "Secure when and how users register for Azure AD multifactor authentication and self-service password.",
            "id": "b8bda7f8-6584-4446-bce9-d871480e53fa",
            "scenarios": "secureFoundation,zeroTrust,remoteWork"
        },
        {
            "name": "Block legacy authentication",
            "description": "Block legacy authentication endpoints that can be used to bypass multifactor authentication.",
            "id": "0b2282f9-2862-4178-88b5-d79340b36cb8",
            "scenarios": "secureFoundation,zeroTrust,remoteWork,protectAdmins"
        },
        {
            "name": "Require multifactor authentication for all users",
            "description": "Require multifactor authentication for all user accounts to reduce risk of compromise.",
            "id": "a3d0a415-b068-4326-9251-f9cdf9feeb64",
            "scenarios": "secureFoundation,zeroTrust,remoteWork"
        }
    ]
}
```
