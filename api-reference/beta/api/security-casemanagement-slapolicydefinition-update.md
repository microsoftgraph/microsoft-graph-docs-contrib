---
title: "Update slaPolicyDefinition"
description: "Update the properties of an SLA policy."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update slaPolicyDefinition

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md).

Updating **timers** replaces the entire collection. Individual timers don't have their own update endpoint.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_casemanagement_slapolicydefinition_update_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-slapolicydefinition-update-permissions.md)]

[!INCLUDE [rbac-case-management-sla-policy-apis-config-manage](../includes/rbac-for-apis/rbac-case-management-sla-policy-apis-config-manage.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/caseManagement/caseTypeConfigurations/{caseTypeConfiguration-id}/slaPolicies/{slaPolicyDefinition-id}
```

Replace `{caseTypeConfiguration-id}` with the owning case type: `incidentCase`, `genericCase`, or `exposureCase`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the policy. Maximum length: 5,000 characters.|
|exitCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that removes a case from the policy's scope.|
|isActive|Boolean|Whether the policy is actively evaluated. Inactive policies are excluded from new case evaluations.|
|pauseCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition that pauses the timer while a case matches it.|
|recalculateCondition|[microsoft.graph.security.caseManagement.slaPolicyRecalculateCondition](../resources/security-casemanagement-slapolicyrecalculatecondition.md)|The settings that control whether elapsed time resets on recalculation.|
|setCriteria|[microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md)|The condition a case must match to enter scope. The policy remains scoped to its owning case type.|
|timers|[microsoft.graph.security.caseManagement.slaPolicyTimer](../resources/security-casemanagement-slapolicytimer.md) collection|The complete replacement collection of up to 15 timers. Exactly one timer must have **isDefault** set to `true`. Each timer must specify **order**, **isDefault**, and **breachThresholdInMinutes**.|

For request bodies, use `@odata.type` to specify the concrete condition type: `#microsoft.graph.security.caseManagement.slaPolicyCondition` for a leaf condition or `#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock` for a group. The maximum nesting depth is two.

The **displayName** property is immutable after creation and can't be updated.

## Response

If successful, this method returns a `200 OK` response code and an updated [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md) object in the response body.

The response contains the full updated resource, not only the changed properties. Attempting to update **displayName** returns `400 Bad Request`. A timer collection with no default timer or multiple default timers returns `400 Bad Request`.

Response payloads can omit `@odata.type` on non-polymorphic objects.

## Examples

#### Request

The following example replaces the policy's timer collection to change the warning threshold from four hours to six hours. It retains the eight-hour breach threshold.

<!-- {
  "blockType": "request",
  "name": "update_slapolicydefinition"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/slaPolicies/8f3b6c2e-2f2a-4b8e-9a1e-2f1c4d5a6b7c
Content-Type: application/json

{
  "timers": [
    {
      "order": 0,
      "isDefault": true,
      "warningThresholdInMinutes": 360,
      "breachThresholdInMinutes": 480
    }
  ]
}
```

#### Response

The following example shows the full updated resource.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyDefinition"
}
-->
``` http
HTTP/1.1 200 OK
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
      "warningThresholdInMinutes": 360,
      "breachThresholdInMinutes": 480
    }
  ],
  "createdDateTime": "2026-08-17T08:15:00Z",
  "createdBy": "8b2e1f6a-51ce-4a53-bd08-ec42a3b768e1",
  "lastModifiedDateTime": "2026-08-17T09:02:00Z",
  "lastModifiedBy": "8b2e1f6a-51ce-4a53-bd08-ec42a3b768e1"
}
```
