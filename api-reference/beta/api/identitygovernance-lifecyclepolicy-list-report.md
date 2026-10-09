---
title: "Get lifecyclePolicyReport"
description: "Read the latest processing report for a lifecycle policy."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get lifecyclePolicyReport

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the latest [lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md) for a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicy_list_report" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicy-list-report-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}/report
```

## Optional query parameters

This method supports the `$select` OData query parameter to customize the response.

## Request headers

| Name | Description |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md) object in the response body.

## Examples

### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/37c2a69d-38d7-42ad-8b77-24da70f35bd4/report
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json
```

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/lifecyclePolicies('37c2a69d-38d7-42ad-8b77-24da70f35bd4')/report/$entity",
  "id": "49d50258-4a38-4d78-b740-efb1036a6547",
  "policyVersion": 4,
  "scopeProcessing": {
    "currentStatus": "idle",
    "currentStartedDateTime": null,
    "latestAttempt": {
      "status": "completed",
      "startedDateTime": "2026-08-08T01:00:00Z",
      "completedDateTime": "2026-08-08T01:04:12Z",
      "error": null
    },
    "lastSuccessfulProcessingDateTime": "2026-08-08T01:04:12Z"
  },
  "subjectsInScopeCount": 120
}
```
