---
title: "Update plannerTaskConfiguration"
description: "Update the properties of a plannerTaskConfiguration object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: apiPageType
ms.topic: reference
---

# Update plannerTaskConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertaskconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertaskconfiguration-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/businessScenarios/{businessScenarioId}/planner/taskConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|editPolicy|[plannerTaskPolicy](../resources/plannertaskpolicy.md)|Policy configuration for tasks created for a [businessScenario](../resources/businessscenario.md) when they are being changed outside of the scenario. Optional.|

## Response

If successful, this method returns a `200 OK` response code and an updated [plannerTaskConfiguration](../resources/plannertaskconfiguration.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_plannertaskconfiguration",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/taskConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerTaskConfiguration",
  "editPolicy": {
    "rules": [
      {
        "defaultRule": "block",
        "role": {
          "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",
          "roleKind": "relationship",
          "role": "defaultRules"
        },
        "propertyRule": {
          "percentComplete": ["allow"],
          "ruleKind": "taskRule",
          "assignments": {
            "defaultRules": ["addSelf"],
            "overrides": []
          }
        }
      },
      {
        "defaultRule": "block",
        "role": {
          "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",
          "roleKind": "relationship",
          "role": "taskAssignees"
        },
        "propertyRule": {
          "startDate": ["allow"],
          "dueDate": ["allow"],
          "percentComplete": ["allow"],
          "order": ["allow"],
          "ruleKind": "taskRule",
          "references": {
            "defaultRules": ["allow"],
            "overrides": [
              {
                "name": "userCreated",
                "rules": ["allow"]
              },
              {
                "name": "applicationCreated",
                "rules": ["block"]
              }
            ]
          },
          "checkLists": {
            "defaultRules": ["allow"],
            "overrides": [
              {
                "name": "userCreated",
                "rules": ["allow"]
              },
              {
                "name": "applicationCreated",
                "rules": ["check"]
              }
            ]
          },
          "assignments": {
            "defaultRules": ["block"],
            "overrides": [
              {
                "name": "userCreated",
                "rules": ["removeSelf"]
              },
              {
                "name": "applicationCreated",
                "rules": ["check"]
              }
            ]
          },
          "appliedCategories": {
            "defaultRules": [
              "allow"
            ],
            "overrides": []
          }
        }
      }
    ]
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-plannertaskconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-plannertaskconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-plannertaskconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-plannertaskconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-plannertaskconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-plannertaskconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-plannertaskconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-plannertaskconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTaskConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.plannerTaskConfiguration",
  "id": "52be01e6291f403aa49f2b9f5288ab48",
  "editPolicy": {
    "rules": [
      {
        "defaultRule": "block",
        "role": {
          "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",
          "roleKind": "relationship",
          "role": "defaultRules"
        },
        "propertyRule": {
          "move": [],
          "delete": [],
          "title": [],
          "notes": [],
          "priority": [],
          "startDate": [],
          "dueDate": [],
          "percentComplete": ["allow"],
          "order": [],
          "previewType": [],
          "ruleKind": "taskRule",
          "references": null,
          "checkLists": null,
          "assignments": {
            "defaultRules": ["addSelf"],
            "overrides": []
          },
          "appliedCategories": null
        }
      },
      {
        "defaultRule": "block",
        "role": {
          "@odata.type": "#microsoft.graph.plannerRelationshipBasedUserType",
          "roleKind": "relationship",
          "role": "taskAssignees"
        },
        "propertyRule": {
          "move": [],
          "delete": [],
          "title": [],
          "notes": [],
          "priority": [],
          "startDate": ["allow"],
          "dueDate": ["allow"],
          "percentComplete": ["allow"],
          "order": ["allow"],
          "previewType": [],
          "ruleKind": "taskRule",
          "references": {
            "defaultRules": ["allow"],
            "overrides": [
              {
                "name": "userCreated",
                "rules": ["allow"]
              },
              {
                "name": "applicationCreated",
                "rules": ["block"]
              }
            ]
          },
          "checkLists": {
            "defaultRules": ["allow"],
            "overrides": [
              {
                "name": "userCreated",
                "rules": ["allow"]
              },
              {
                "name": "applicationCreated",
                "rules": ["check"]
              }
            ]
          },
          "assignments": {
            "defaultRules": ["block"],
            "overrides": [
              {
                "name": "userCreated",
                "rules": ["removeSelf"]
              },
              {
                "name": "applicationCreated",
                "rules": ["check"]
              }
            ]
          },
          "appliedCategories": {
            "defaultRules": [
              "allow"
            ],
            "overrides": []
          }
        }
      }
    ]
  }
}
```
