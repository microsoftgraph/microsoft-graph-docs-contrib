---
title: "Get conditionalAccessPolicy"
description: "Retrieve the properties and relationships of a conditionalaccesspolicy object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Get conditionalAccessPolicy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a conditionalaccesspolicy object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account) | Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Delegated (work or school account) | Policy.Read.All or Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /conditionalaccess/policies/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_conditionalaccesspolicy"
}-->

```http
GET https://graph.microsoft.com/beta/conditionalaccess/policies/cfbc9bc8-3d77-4ba4-ad23-926015971fee
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicy"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#conditionalAccessPolicy/$entity",
  "id": "cfbc9bc8-3d77-4ba4-ad23-926015971fee",
  "displayName": "Sample for documentation",
  "createdDateTime": "2019-09-24T22:50:09.7320753Z",
  "modifiedDateTime": null,
  "state": "disabled",
  "conditions": {
    "userRiskLevels": [],
    "signInRiskLevels": [
      "high",
      "medium"
    ],
    "clientAppTypes": [
      "modern",
      "easSupported",
      "easUnsupported",
      "other"
    ],
    "applications": {
      "includeApplications": [
        "All"
      ],
      "excludeApplications": [],
      "includeUserActions": []
    },
    "users": {
      "includeUsers": [
        "a702a13d-a437-4a07-8a7e-8c052de62dfd"
      ],
      "excludeUsers": [
        "124c5b6a-ffa5-483a-9b88-04c3fce5574a",
        "GuestsOrExternalUsers"
      ],
      "includeGroups": [],
      "excludeGroups": [],
      "includeRoles": [
        "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
        "cf1c38e5-3621-4004-a7cb-879624dced7c",
        "c4e39bd9-1100-46d3-8c65-fb160da0071f"
      ],
      "excludeRoles": [
        "b0f54661-2d74-4c50-afa3-1ec803f12efe"
      ]
    },
    "platforms": {
      "includePlatforms": [
        "all"
      ],
      "excludePlatforms": [
        "iOS",
        "windowsPhone"
      ]
    },
    "locations": {
      "includeLocations": [
        "AllTrusted"
      ],
      "excludeLocations": [
        "00000000-0000-0000-0000-000000000000",
        "d2136c9c-b049-47ae-b9cf-316e04ef7198"
      ]
    },
    "deviceStates": {
      "includeStates": [
        "All"
      ],
      "excludeStates": [
        "Compliant"
      ]
    }
  },
  "grantControls": {
    "operator": "OR",
    "builtInControls": [
      "mfa",
      "compliantDevice",
      "domainJoinedDevice",
      "approvedApplication",
      "compliantApplication"
    ],
    "customAuthenticationFactors": [],
    "termsOfUse": []
  },
  "sessionControls": {
    "applicationEnforcedRestrictions": null,
    "persistentBrowser": null,
    "cloudAppSecurity": {
      "cloudAppSecurityType": "monitorOnly",
      "isEnabled": true
    },
    "signInFrequency": {
      "value": 8,
      "type": "hours",
      "isEnabled": true
    }
  }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get conditionalAccessPolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->