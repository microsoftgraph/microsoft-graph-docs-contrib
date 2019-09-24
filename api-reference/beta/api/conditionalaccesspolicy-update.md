---
title: "Update conditionalaccesspolicy"
description: "Update the properties of a conditionalaccesspolicy object."
localization_priority: Normal
author: ""
ms.prod: ""
doc_type: "apiPageType"
---

# Update conditionalaccesspolicy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a conditionalaccesspolicy object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account) | Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Delegated (work or school account) | Policy.ReadWrite.ConditionalAccess |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /conditionalaccess/policies/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

See properties in [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| `includeApplications` | String collection | Application IDs in scope of policy unless explicitly excluded. |
| `excludeApplications` | String collection | Application IDs excluded from scope of policy. |
| `includeUserActions` | String collection | User actions in scope of the policy, e.g. 'urn:user:registersecurityinfo'. |
| `includeUsers` | String collection | User IDs in scope of policy unless explicitly excluded, or `ALL` or `GUEST`. |
| `excludeUsers` | String collection | User IDs excluded from scope of policy and/or `GUEST`. |
| `includeGroups` | String collection | Group IDs in scope of policy unless explicitly excluded, or `ALL`. |
| `excludeGroups` | String collection | Group IDs excluded from scope of policy. |
| `includeRoles` | String collection | Role IDs in scope of policy unless explicitly excluded, or `ALL`. |
| `excludeRoles` | String collection | Role IDs excluded from scope of policy. |

## Response

If successful, this method returns a `200 OK` response code and an updated [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_conditionalaccesspolicy"
}-->

```http
PATCH https://graph.microsoft.com/beta/conditionalaccess/policies/7960c36c-ee7e-449f-8d1b-aa09046a9bc3
Content-type: application/json

{
  "displayName": "Sample - UpdateTest1",
  "conditions": {
    "applications": {
      "includeApplications": [
        "00000002-0000-0ff1-ce00-000000000000"
      ],
      "excludeApplications": [],
      "includeAuthenticationContext": []
    },
    "users": {
      "includeUsers": [],
      "excludeUsers": [
        "Guests"
      ],
      "includeGroups": [
        "796f8da4-21f2-4148-a34b-9735811d5852",
        "5fad529d-b4a2-4d4d-89c5-e72be11a8ab5"
      ],
      "excludeGroups": [
        "46756a9c-01c0-4526-96e1-5f343c240567"
      ],
      "includeRoles": [
        "cf1c38e5-3621-4004-a7cb-879624dced7c"
      ],
      "excludeRoles": []
    }
  }
}
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
  "id": "id-value",
  "createdDateTime": "datetime-value",
  "modifiedDateTime": "datetime-value",
  "displayName": "displayName-value",
  "description": "description-value",
  "state": "state-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update conditionalaccesspolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->