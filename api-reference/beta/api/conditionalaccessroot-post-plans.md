---
title: "Create conditionalAccessPolicyPlan"
description: "Create a new conditionalAccessPolicyPlan object."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create conditionalAccessPolicyPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conditionalaccessroot_post_plans" } -->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccessroot-post-plans-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-policy-plan-apis](../includes/rbac-for-apis/rbac-conditionalaccess-policy-plan-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identity/conditionalAccess/plans
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) object.

You can specify the following properties when creating a **conditionalAccessPolicyPlan**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|A free-text description of the plan's purpose and scope. Optional.|
|displayName|String|The administrator-defined display name for the plan. Required.|
|owners|String collection|The IDs of users and groups recorded as metadata owners of the plan. Does not grant any role or permission to the plan. Optional.|
|rules|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) collection|The rules to include in the plan. At least one rule is required.|
|sharedConditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|The conditions that apply to every rule in the plan. During evaluation, these conditions are combined with each rule's **conditions** property; rules can add conditions but can't remove plan-level conditions. Optional.|
|tags|String collection|The administrator-defined tags used to categorize and organize the plan. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_conditionalaccesspolicyplan"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/plans
Content-Type: application/json

{
  "displayName": "Device compliance plan",
  "description": "Requires compliant devices for all users.",
  "owners": [
    "a1b2c3d4-0004-0000-0000-000000000000"
  ],
  "tags": [
    "device-compliance"
  ],
  "sharedConditions": {
    "platforms": {
      "includePlatforms": [
        "windows"
      ]
    }
  },
  "rules": [
    {
      "displayName": "Require compliant Windows devices",
      "state": "enabled",
      "conditions": {
        "users": {
          "includeUsers": [
            "All"
          ]
        },
        "applications": {
          "includeApplications": [
            "All"
          ]
        }
      },
      "controls": {
        "grantControls": {
          "operator": "OR",
          "builtInControls": [
            "compliantDevice"
          ]
        }
      }
    }
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicyPlan"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicyPlan",
  "id": "d1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a",
  "displayName": "Device compliance plan",
  "description": "Requires compliant devices for all users.",
  "owners": [
    "a1b2c3d4-0004-0000-0000-000000000000"
  ],
  "tags": [
    "device-compliance"
  ],
  "version": 1,
  "templateId": null,
  "createdDateTime": "2026-04-10T15:30:00Z",
  "modifiedDateTime": "2026-04-10T15:30:00Z",
  "sharedConditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
    "platforms": {
      "includePlatforms": [
        "windows"
      ]
    }
  },
  "rules": [
    {
      "@odata.type": "#microsoft.graph.conditionalAccessPolicyRule",
      "id": "d1e2f3a4-b5c6-7d8e-9f0a-100000000001",
      "displayName": "Require compliant Windows devices",
      "description": "Requires Windows devices to be compliant.",
      "state": "enabled",
      "conditions": {
        "@odata.type": "microsoft.graph.conditionalAccessConditionSet",
        "users": {
          "includeUsers": [
            "All"
          ]
        },
        "applications": {
          "includeApplications": [
            "All"
          ]
        }
      },
      "controls": {
        "@odata.type": "microsoft.graph.conditionalAccessPolicyRuleControls",
        "grantControls": {
          "operator": "OR",
          "builtInControls": [
            "compliantDevice"
          ]
        }
      }
    }
  ]
}
```
