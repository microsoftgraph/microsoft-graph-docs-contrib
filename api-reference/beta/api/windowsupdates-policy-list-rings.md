---
title: "List rings"
description: "Get a list of the ring objects and their properties."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List rings

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ring](../resources/windowsupdates-ring.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-policy-list-rings-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-list-rings-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies/{policyId}/rings
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_ring"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/{policyId}/rings
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.ring"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.ring",
      "displayName": "Ring0 - IT devices",
      "description": "First deployment ring to test updates before going to prod.",
      "includedGroupAssignment": {
        "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
      },
      "excludedGroupAssignment": {
        "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
      },
      "deferralInDays": 5,
      "isPaused": false,
      "id": "03f72335-b88c-519e-16e7-039fdab8670f",
      "createdDateTime": "2020-06-09T10:00:00Z",
      "lastModifiedDateTime": "2020-06-09T10:00:00Z"
    }
  ]
}
```

