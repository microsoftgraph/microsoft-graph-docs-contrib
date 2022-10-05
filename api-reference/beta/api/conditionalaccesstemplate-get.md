---
title: "Get template"
description: "Retrieve the properties and relationships of a conditionalAccessTemplate object."
author: "xuchen1"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get conditionalAccessTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)                                       |
|:--------------------------------------|:----------------------------------------------------------------------------------|
|Delegated (work or school account)     | Policy.Read.All |
|Delegated (personal Microsoft account) | Not supported.  |
|Application                            | Policy.Read.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/templates/c7503427-338e-4c5e-902d-abe252abfb43
```

## Optional query parameters
This method supports the `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
| Name            |Description|
|:----------------|:----------|
| Authorization   | Bearer {token} |
| Accept-Language | Language. Optional. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_conditionalaccesstemplate"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/templates/c7503427-338e-4c5e-902d-abe252abfb43
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessTemplate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccess/templates/$entity",
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
    }
}
```
