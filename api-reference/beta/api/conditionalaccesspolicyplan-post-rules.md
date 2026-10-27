---
title: "Create conditionalAccessPolicyRule"
description: "Create a new conditionalAccessPolicyRule object."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create conditionalAccessPolicyRule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "conditionalaccesspolicyplan-post-rules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/conditionalaccesspolicyplan-post-rules-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-policy-plan-apis](../includes/rbac-for-apis/rbac-conditionalaccess-policy-plan-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identity/conditionalAccess/plans/{conditionalAccessPolicyPlanId}/rules
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) object.

You can specify the following properties when creating a **conditionalAccessPolicyRule**.

|Property|Type|Description|
|:---|:---|:---|
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|The conditions specific to the rule. During evaluation, these conditions are combined with the parent plan's **sharedConditions** property to determine the rule's effective targeting. Optional.|
|controls|[conditionalAccessPolicyRuleControls](../resources/conditionalaccesspolicyrulecontrols.md)|The grant and session controls enforced when the rule's effective conditions are met. Required.|
|description|String|A free-text description of the rule's purpose. Optional.|
|displayName|String|The administrator-defined display name for the rule. Required.|
|state|[conditionalAccessPolicyState](../resources/enums.md#conditionalaccesspolicystate-values)|The state of the rule. The possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_conditionalaccesspolicyrule"
}
-->
```http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/plans/d1e2f3a4-b5c6-7d8e-9f0a-1b2c3d4e5f6a/rules
Content-Type: application/json

{
  "displayName": "Require compliant Windows devices",
  "description": "Requires Windows devices to be compliant.",
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
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conditionalAccessPolicyRule"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

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
```
