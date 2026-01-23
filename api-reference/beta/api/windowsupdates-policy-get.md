---
title: "Get policy"
description: "Read the properties and relationships of policy object."
author: "andredm7"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get policy

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [policy](../resources/windowsupdates-policy.md) object.

You can use this method with the following child object type: [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies/{policyId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.policy](../resources/windowsupdates-policy.md) object in the response body.

## Examples

### Request

The following example shows how to get a quality update policy.
<!-- {
  "blockType": "request",
  "name": "get_qualityupdatepolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/f316bfd9-c84e-a334-cebe-071d3c64b2c1
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdatePolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
    "displayName": "Patch Tuesday Test",
    "description": "Quality update policy to test upcoming Patch Tuesday updates",
    "approvalRules": [
      {
        "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule"
      }
    ],
    "id": "f316bfd9-c84e-a334-cebe-071d3c64b2c1",
    "createdDateTime": "2020-06-09T10:00:00Z",
    "lastModifiedDateTime": "2020-06-09T10:00:00Z"
  }
}
```
