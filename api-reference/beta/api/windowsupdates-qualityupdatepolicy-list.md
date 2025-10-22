---
title: "List qualityUpdatePolicy objects"
description: "Get a list of the qualityUpdatePolicy objects and their properties."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List qualityUpdatePolicy objects

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-qualityupdatepolicy-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-qualityupdatepolicy-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdatePolicy')
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

If successful, this method returns a `200 OK` response code and a collection of [qualityUpdatePolicy](../resources/windowsupdates-qualityupdatepolicy.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_qualityupdatepolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdatePolicy')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.qualityUpdatePolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
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
  ]
}
```

