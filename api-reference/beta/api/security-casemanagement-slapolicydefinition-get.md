---
title: "Get slaPolicyDefinition"
description: "Get an SLA policy, including its criteria and timers."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get slaPolicyDefinition

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md), including its criteria and timers.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_casemanagement_slapolicydefinition_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-slapolicydefinition-get-permissions.md)]

[!INCLUDE [rbac-case-management-sla-policy-apis-read](../includes/rbac-for-apis/rbac-case-management-sla-policy-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/caseTypeConfigurations/{caseTypeConfiguration-id}/slaPolicies/{slaPolicyDefinition-id}
```

Replace `{caseTypeConfiguration-id}` with the owning case type: `incidentCase`, `genericCase`, or `exposureCase`.

## Optional query parameters

This method supports the `$select` OData query parameter to select which properties are returned. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md) object in the response body.

The full resource is returned unless `$select` is used. If the policy doesn't exist, this method returns `404 Not Found`.

Response payloads can omit `@odata.type` on non-polymorphic objects.

## Examples

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_slapolicydefinition"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/caseTypeConfigurations/incidentCase/slaPolicies/8f3b6c2e-2f2a-4b8e-9a1e-2f1c4d5a6b7c
```

#### Response

The following example shows the response.

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
