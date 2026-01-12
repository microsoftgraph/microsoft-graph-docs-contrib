---
title: "List approvals"
description: "Get a list of the policyApproval objects and their properties."
author: "andredm7"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List approvals

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [policyApproval](../resources/windowsupdates-policyapproval.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policy-list-approvals-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-list-approvals-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies/{policyId}/approvals
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.policyApproval](../resources/windowsupdates-policyapproval.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_policyapproval"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/approvals
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.policyApproval)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.policyApproval",
      "catalogEntryId": "1d8864c1-531f-4d5b-8225-8653ef4316d8",
      "status": "suspended",
      "id": "ab3a53f0-f7aa-10b1-04d4-8680584cbbb6",
      "createdDateTime": "2020-06-09T10:00:00Z",
      "lastModifiedDateTime": "2020-06-09T10:00:00Z"
    }
  ]
}
```

