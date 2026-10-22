---
title: "List policies"
description: "Get a list of the policy objects and their properties."
author: "andredm7"
ms.date: 02/05/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List policies

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [policy](../resources/windowsupdates-policy.md) objects and their properties. 

You can use this method with the following child object types: [driverUpdatePolicy](../resources/windowsupdates-driverupdatepolicy.md), [featureUpdatePolicy](../resources/windowsupdates-featureupdatepolicy.md), and [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_adminwindowsupdates_list_policies" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-adminwindowsupdates-list-policies-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

To get all policy objects or only policies of a specific derived type:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies
GET /admin/windows/updates/policies/microsoft.graph.windowsUpdates.driverUpdatePolicy
GET /admin/windows/updates/policies/microsoft.graph.windowsUpdates.featureUpdatePolicy
GET /admin/windows/updates/policies/microsoft.graph.windowsUpdates.qualityUpdatePolicy
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) objects in the response body.

## Examples

### Request

The following example shows how to get a list that contains each supported policy type.
<!-- {
  "blockType": "request",
  "name": "list_windowsupdates_policy",
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.policy)",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/admin/windows/updates/$metadata#policies",
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdatePolicy",
      "approvalRules": [
        {
          "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateApprovalRule",
          "deferralInDays": 7
        }
      ],
      "createdDateTime": "2026-09-28T10:00:00Z",
      "description": "Driver and firmware updates for managed devices",
      "displayName": "Contoso driver policy",
      "id": "11111111-1111-4111-8111-111111111111",
      "lastModifiedDateTime": "2026-09-28T10:00:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdatePolicy",
      "approvalRules": [],
      "createdDateTime": "2026-09-28T10:05:00Z",
      "description": "Administrator-approved Windows feature updates",
      "displayName": "Contoso feature policy",
      "id": "22222222-2222-4222-8222-222222222222",
      "lastModifiedDateTime": "2026-09-28T10:05:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
      "approvalRules": [
        {
          "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
          "cadence": "monthly",
          "classification": "security",
          "deferralInDays": 2
        }
      ],
      "createdDateTime": "2026-09-28T10:10:00Z",
      "description": "Monthly quality updates for production devices",
      "displayName": "Contoso quality policy",
      "id": "33333333-3333-4333-8333-333333333333",
      "lastModifiedDateTime": "2026-09-28T10:10:00Z"
    }
  ]
}
```
