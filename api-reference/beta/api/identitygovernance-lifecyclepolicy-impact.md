---
title: "lifecyclePolicy: impact"
description: "Evaluate the impact of a lifecycle policy during a specified period."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# lifecyclePolicy: impact

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Evaluate the impact of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) on its subjects during a specified period. If you omit the start and end dates, the function evaluates the previous seven days. The maximum supported period is 30 days.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitygovernance_lifecyclepolicy_impact" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitygovernance-lifecyclepolicy-impact-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/lifecycleWorkflows/lifecyclePolicies/{lifecyclePolicyId}/impact(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters

| Parameter | Type | Description |
|:---|:---|:---|
| startDateTime | DateTimeOffset | Optional. The start of the evaluation period. |
| endDateTime | DateTimeOffset | Optional. The end of the evaluation period. |

## Optional query parameters

This method supports `$filter` with the `eq` and `ne` operators on `subject/id`, `$expand=subject`, and `$select` to customize the response.

## Request headers

| Name | Description |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [lifecyclePolicyImpactSummary](../resources/identitygovernance-lifecyclepolicyimpactsummary.md) objects in the response body.

## Examples

### Request

```http
GET https://graph.microsoft.com/beta/identityGovernance/lifecycleWorkflows/lifecyclePolicies/37c2a69d-38d7-42ad-8b77-24da70f35bd4/impact(startDateTime=2026-08-01T00:00:00Z,endDateTime=2026-08-08T00:00:00Z)?$expand=subject
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json
```

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.identityGovernance.lifecyclePolicyImpactSummary)",
  "value": [
    {
      "id": "e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf",
      "actionsTaken": [
        {
          "dateTime": "2026-08-04T10:00:00Z",
          "actionType": "attestationNeededNotificationSent"
        }
      ],
      "subject": {
        "@odata.type": "#microsoft.graph.user",
        "id": "e4f5d67a-5a10-4c40-9734-0c5f2d83a1bf",
        "displayName": "Adele Vance"
      }
    }
  ]
}
```
