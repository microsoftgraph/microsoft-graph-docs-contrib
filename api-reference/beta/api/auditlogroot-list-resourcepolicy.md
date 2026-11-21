---
title: "List resourcePolicy"
description: "Get Entra Resource Policy evaluation audit events for Microsoft Graph requests."
author: "milanevk"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List resourcePolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md) objects that represent Entra Resource Policy (ERP) evaluation audit events for Microsoft Graph requests.

Events are retained for seven days with Microsoft Entra ID Free and 30 days with Microsoft Entra ID P1 or P2.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "auditlogroot-list-resourcepolicy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/auditlogroot-list-resourcepolicy-permissions.md)]

[!INCLUDE [rbac-resource-policy-evaluation-apis-read](../includes/rbac-for-apis/rbac-resource-policy-evaluation-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /auditLogs/resourcePolicy
```

## Optional query parameters

This method supports the `$filter` (`eq`, `ge`, `le`), `$select`, `$top`, `$count`, and `$orderby` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

The following table lists the properties and operators supported by `$filter`.

|Property|Supported operator|
|:---|:---|
|**apiVersion**|`eq`|
|**appId**|`eq`|
|**clientRequestId**|`eq`|
|**evaluatedDateTime**|`eq`, `ge`, `le`|
|**id**|`eq`|
|**operationId**|`eq`|
|**policyDecision**|`eq`|
|**policyDetails/assignmentUniqueName**|`eq` through `policyDetails/any(...)` only|
|**requestId**|`eq`|
|**requestMethod**|`eq`|
|**servicePrincipalId**|`eq`|
|**targetResourceId**|`eq`|
|**targetResourceName**|`eq`|
|**userId**|`eq`|

Only **evaluatedDateTime** supports `$orderby`, in ascending or descending order. By default, events are ordered by **evaluatedDateTime** descending.

When no filter on **evaluatedDateTime** is specified, the response contains events from the last 24 hours. The default and maximum page size is 999 events. Follow the `@odata.nextLink` in the response to retrieve subsequent pages. The `$skip` query parameter isn't supported.

The **policyDetails** property isn't returned by default. Include it in `$select` to retrieve per-policy evaluation results.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [resourcePolicyEvaluationEvent](../resources/resourcepolicyevaluationevent.md) objects in the response body.

Using `$skip` returns a `400 Bad Request` response code. Use the `@odata.nextLink` returned in the response instead.

## Examples

### Example 1: List denied requests since a specified date

#### Request

The following example lists denied requests evaluated on or after November 4, 2026.

<!-- {
  "blockType": "request",
  "name": "list_resourcepolicyevaluationevent"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/resourcePolicy?$filter=policyDecision eq 'deny' and evaluatedDateTime ge 2026-11-04T00:00:00Z&$top=2
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.resourcePolicyEvaluationEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/resourcePolicy",
  "value": [
    {
      "@odata.type": "#microsoft.graph.resourcePolicyEvaluationEvent",
      "id": "b5a1f3e2-8c47-4a3d-9f21-1c0e2a7b9d40",
      "evaluatedDateTime": "2026-11-04T13:42:11Z",
      "requestId": "0f9c2a1b-4d3e-4f5a-8b6c-7d8e9f0a1b2c",
      "operationId": "1a2b3c4d-5e6f-4a7b-8c9d-0e1f2a3b4c5d",
      "clientRequestId": "9a8b7c6d-5e4f-4a3b-2c1d-0e9f8a7b6c5d",
      "requestMethod": "POST",
      "apiVersion": "beta",
      "requestUri": "/beta/applications/{redacted}/addKey",
      "tenantId": "5b2c8a9e-6f10-4d7b-8c3a-2e9f0a1b4c5d",
      "appId": "7e3a9c2b-4d5f-4a6b-8c1d-0e2f3a4b5c6d",
      "appDisplayName": "Contoso Automation",
      "servicePrincipalId": "3d8f1e2a-9b7c-4d5e-8f0a-1b2c3d4e5f60",
      "userId": null,
      "targetResourceName": "application/addKey",
      "targetResourceId": null,
      "policyDecision": "deny",
      "evaluatedPoliciesCount": 4,
      "applicablePoliciesCount": 2,
      "denyPoliciesCount": 1,
      "auditPoliciesCount": 0,
      "errorPoliciesCount": 0,
      "totalPolicyEvaluationDurationMs": 18
    }
  ]
}
```

### Example 2: Find events for a policy assignment

#### Request

The following example filters by a policy assignment's unique name using `policyDetails/any(...)`. It also uses `$select` to include the per-policy evaluation results, which aren't returned by default. Without a filter on **evaluatedDateTime**, the query returns events from the last 24 hours.

<!-- {
  "blockType": "request",
  "name": "list_resourcepolicyevaluationevent_by_assignment"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/resourcePolicy?$filter=policyDetails/any(p:p/assignmentUniqueName eq 'block-app-key-rotation')&$select=id,policyDecision,policyDetails
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.resourcePolicyEvaluationEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/resourcePolicy(id,policyDecision,policyDetails)",
  "value": [
    {
      "id": "b5a1f3e2-8c47-4a3d-9f21-1c0e2a7b9d40",
      "policyDecision": "deny",
      "policyDetails": [
        {
          "assignmentUniqueName": "block-app-key-rotation",
          "assignedPolicyDisplayName": "Block application key rotation",
          "appliedPolicyEffects": "deny",
          "isEnforced": true,
          "isCompliant": false,
          "isApplicable": true
        }
      ]
    }
  ]
}
```

### Example 3: Find an application's events in a time range

#### Request

The following example filters by **appId** and a time range, orders the results from oldest to newest, and selects properties useful for investigating policy decisions. Both time boundaries are inclusive.

<!-- {
  "blockType": "request",
  "name": "list_resourcepolicyevaluationevent_by_app_and_time"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/resourcePolicy?$filter=appId eq '7e3a9c2b-4d5f-4a6b-8c1d-0e2f3a4b5c6d' and evaluatedDateTime ge 2026-11-04T13:00:00Z and evaluatedDateTime le 2026-11-04T14:00:00Z&$orderby=evaluatedDateTime asc&$select=id,evaluatedDateTime,appId,requestMethod,targetResourceName,policyDecision&$top=10
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.resourcePolicyEvaluationEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/resourcePolicy(id,evaluatedDateTime,appId,requestMethod,targetResourceName,policyDecision)",
  "value": [
    {
      "id": "b5a1f3e2-8c47-4a3d-9f21-1c0e2a7b9d40",
      "evaluatedDateTime": "2026-11-04T13:42:11Z",
      "appId": "7e3a9c2b-4d5f-4a6b-8c1d-0e2f3a4b5c6d",
      "requestMethod": "POST",
      "targetResourceName": "application/addKey",
      "policyDecision": "deny"
    }
  ]
}
```

### Example 4: Correlate events by operation ID

#### Request

The following example filters by **operationId** to find related events, such as child operations in a `$batch` request, and selects request identifiers for correlation. Without a filter on **evaluatedDateTime**, the query returns events from the last 24 hours.

<!-- {
  "blockType": "request",
  "name": "list_resourcepolicyevaluationevent_by_operation"
}
-->
``` http
GET https://graph.microsoft.com/beta/auditLogs/resourcePolicy?$filter=operationId eq '1a2b3c4d-5e6f-4a7b-8c9d-0e1f2a3b4c5d'&$select=id,operationId,requestId,clientRequestId,policyDecision
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "isCollection": true,
  "@odata.type": "microsoft.graph.resourcePolicyEvaluationEvent"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#auditLogs/resourcePolicy(id,operationId,requestId,clientRequestId,policyDecision)",
  "value": [
    {
      "id": "b5a1f3e2-8c47-4a3d-9f21-1c0e2a7b9d40",
      "operationId": "1a2b3c4d-5e6f-4a7b-8c9d-0e1f2a3b4c5d",
      "requestId": "0f9c2a1b-4d3e-4f5a-8b6c-7d8e9f0a1b2c",
      "clientRequestId": "9a8b7c6d-5e4f-4a3b-2c1d-0e9f8a7b6c5d",
      "policyDecision": "deny"
    }
  ]
}
```
