---
title: "List lifecyclePolicySubjectReports"
description: "List subject processing results from a lifecycle policy report."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List lifecyclePolicySubjectReports

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md) objects from a [lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicyreport_list_subjects" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicyreport-list-subjects-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}/report/subjects
```

## Optional query parameters

This method supports `$top`, `$select`, and `$filter=id eq '{subjectId}'`. It doesn't support `$skip`, `$orderby`, `$search`, `$count`, `$expand`, or filtering on other properties.

## Request headers

| Name | Description |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md) objects in the response body.

## Examples

### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/37c2a69d-38d7-42ad-8b77-24da70f35bd4/report/subjects?$top=10
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json
```

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/lifecyclePolicies('37c2a69d-38d7-42ad-8b77-24da70f35bd4')/report/subjects",
  "value": [
    {
      "id": "e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf",
      "subject": {
        "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyUserSubjectReference",
        "id": "e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf"
      },
      "relationship": "effective",
      "compliance": {
        "status": "nonCompliant",
        "evaluatedDateTime": "2026-08-08T01:02:15Z"
      },
      "enforcement": {
        "status": "waiting",
        "isLocked": true,
        "lastAction": "firstNotificationSent",
        "lastActionDateTime": "2026-08-01T10:00:00Z",
        "nextAction": "secondNotification",
        "nextActionDateTime": "2026-08-15T10:00:00Z",
        "isTerminal": false
      }
    }
  ]
}
```
