---
title: "Create slaPolicyDefinition"
description: "Create an SLA policy for a single case type."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create slaPolicyDefinition

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create an [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md) for a single case type.

The owning case type is determined by the URL. A tenant can have up to 30 SLA policies across its case types.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_casemanagement_casetypeconfiguration_post_slapolicies_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-casetypeconfiguration-post-slapolicies-permissions.md)]

[!INCLUDE [rbac-case-management-sla-policy-apis-config-manage](../includes/rbac-for-apis/rbac-case-management-sla-policy-apis-config-manage.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/caseManagement/caseTypeConfigurations/{caseTypeConfiguration-id}/slaPolicies
```

Replace `{caseTypeConfiguration-id}` with `incidentCase`, `genericCase`, or `exposureCase`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md) object.

You can specify the following properties when creating a **slaPolicyDefinition**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the policy. Maximum length: 5,000 characters. Optional.|
|displayName|String|The policy display name. Must be unique across the tenant, using a case-insensitive comparison. Maximum length: 150 characters. Required.|
|exitCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that removes a case from the policy's scope. Optional.|
|isActive|Boolean|Whether the policy is actively evaluated. Defaults to `true` when omitted. Inactive policies are excluded from new case evaluations. Optional.|
|pauseCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that pauses the timer while a case matches it. Optional.|
|recalculateCondition|[microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition](../resources/security-casemanagement-slapolicyrecalculatecondition.md)|The settings that control whether elapsed time resets on recalculation. Optional.|
|setCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition a case must match to enter scope. When omitted, all cases of the owning case type are in scope. Optional.|
|timers|[microsoft.graph.security.caseManagement.slaPolicyTimer](../resources/security-casemanagement-slapolicytimer.md) collection|The embedded timers. Supply up to 15 timers, with exactly one timer whose **isDefault** is `true`. Each timer must specify **order**, **isDefault**, and **breachThresholdInMinutes**. Required.|

For request bodies, use `@odata.type` to specify the concrete condition type: `#microsoft.graph.security.caseManagement.slaPolicyCondition` for a leaf condition or `#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock` for a group. The maximum nesting depth is two.

## Response

If successful, this method returns a `201 Created` response code and a [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md) object in the response body.

A duplicate display name returns `409 Conflict`. Exceeding the tenant limit of 30 policies or supplying an invalid default timer configuration returns `400 Bad Request`.

Response payloads can omit `@odata.type` on non-polymorphic objects.

## Examples

#### Request

The following example creates a policy for high-priority incident cases, with a four-hour warning threshold and an eight-hour breach threshold.

<!-- {
  "blockType": "request",
  "name": "create_slapolicydefinition"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/slaPolicies
Content-Type: application/json

{
  "displayName": "High priority incident response",
  "description": "Tracks time-to-resolution for high priority incident cases.",
  "setCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock",
    "logicalOperator": "and",
    "conditions": [
      {
        "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCondition",
        "property": "priority",
        "operator": "equals",
        "values": ["High"]
      }
    ]
  },
  "exitCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock",
    "logicalOperator": "or",
    "conditions": [
      {
        "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCondition",
        "property": "status",
        "operator": "equals",
        "values": ["Closed"]
      }
    ]
  },
  "timers": [
    {
      "order": 0,
      "isDefault": true,
      "warningThresholdInMinutes": 240,
      "breachThresholdInMinutes": 480
    }
  ],
  "recalculateCondition": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition",
    "shouldResetTime": false
  },
  "isActive": true
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyDefinition"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/caseManagement/caseTypeConfigurations/incidentCase/slaPolicies/$entity",
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyDefinition",
  "id": "8f3b6c2e-2f2a-4b8e-9a1e-2f1c4d5a6b7c",
  "displayName": "High priority incident response",
  "description": "Tracks time-to-resolution for high priority incident cases.",
  "setCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock",
    "logicalOperator": "and",
    "conditions": [
      {
        "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCondition",
        "property": "priority",
        "operator": "equals",
        "values": ["High"]
      }
    ]
  },
  "exitCriteria": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock",
    "logicalOperator": "or",
    "conditions": [
      {
        "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCondition",
        "property": "status",
        "operator": "equals",
        "values": ["Closed"]
      }
    ]
  },
  "pauseCriteria": null,
  "recalculateCondition": {
    "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition",
    "shouldResetTime": false
  },
  "isActive": true,
  "timers": [
    {
      "policyTimerId": "b1a2c3d4-5e6f-4a7b-8c9d-0e1f2a3b4c5d",
      "order": 0,
      "isDefault": true,
      "warningThresholdInMinutes": 240,
      "breachThresholdInMinutes": 480
    }
  ],
  "createdDateTime": "2026-08-17T08:15:00Z",
  "createdBy": "8b2e1f6a-51ce-4a53-bd08-ec42a3b768e1",
  "lastModifiedDateTime": "2026-08-17T08:15:00Z",
  "lastModifiedBy": "8b2e1f6a-51ce-4a53-bd08-ec42a3b768e1"
}
```
