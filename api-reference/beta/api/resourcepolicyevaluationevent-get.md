---
title: "Get resourcePolicyEvaluationEvent"
description: "Get an Entra Resource Policy evaluation audit event."
author: "milanevk"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Get resourcePolicyEvaluationEvent

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md) object that represents an Entra Resource Policy (ERP) evaluation audit event.

Events are retained for seven days with Microsoft Entra ID Free and 30 days with Microsoft Entra ID P1 or P2.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "resourcepolicyevaluationevent-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicyevaluationevent-get-permissions.md)]

[!INCLUDE [rbac-resource-policy-evaluation-apis-read](../includes/rbac-for-apis/rbac-resource-policy-evaluation-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/resourcePolicy/{resourcePolicyEvaluationEventId}
```

## Optional query parameters

This method supports the `$select` OData query parameter. The **policyDetails** property isn't returned by default; include it in `$select` to retrieve per-policy evaluation results. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md) object in the response body.

If the event doesn't exist or is outside the retention period, this method returns a `404 Not Found` response code with the error code `ResourceNotFound`.

## Examples

### Request

The following example requests the event identifier, net decision, and per-policy evaluation results.

<!-- {
  "blockType": "request",
  "name": "get_resourcepolicyevaluationevent"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/resourcePolicy/b5a1f3e2-8c47-4a3d-9f21-1c0e2a7b9d40?$select=id,policyDecision,policyDetails
```

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.resourcePolicyEvaluationEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/resourcePolicy(id,policyDecision,policyDetails)/$entity",
  "@odata.type": "#microsoft.graph.resourcePolicyEvaluationEvent",
  "id": "b5a1f3e2-8c47-4a3d-9f21-1c0e2a7b9d40",
  "policyDecision": "deny",
  "policyDetails": [
    {
      "@odata.type": "#microsoft.graph.policyEvaluationDetail",
      "assignmentUniqueName": "block-app-key-rotation",
      "assignedPolicyDisplayName": "Block application key rotation",
      "appliedPolicyEffects": "deny",
      "isEnforced": true,
      "isCompliant": false,
      "isApplicable": true,
      "policyMessage": "Key rotation is blocked for this application by tenant policy.",
      "evaluationError": null,
      "applicabilityEvaluationError": null,
      "policyLoadingError": null,
      "policyVersion": "1.2.0"
    }
  ]
}
```
