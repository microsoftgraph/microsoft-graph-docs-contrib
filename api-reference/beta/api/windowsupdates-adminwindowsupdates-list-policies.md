---
title: "List policies"
description: "Get a list of the policy objects and their properties."
author: "andredm7"
ms.date: 10/08/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List policies

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [policy](../resources/windowsupdates-policy.md) objects and their properties. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-adminwindowsupdates-list-policies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-adminwindowsupdates-list-policies-permissions.md)]

## HTTP request

To get a list of policies:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies
```

To get a list of quality update policies:

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

The following example shows how to get a list of quality update policies.
<!-- {
  "blockType": "request",
  "name": "list_qualityupdatepolicy",
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
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.qualityUpdatePolicy)",
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/admin/windows/updates/$metadata#policies",
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdatePolicy",
      "displayName": "Display Name value",
      "description": "Description value",
      "isAutoEnrollDevices": false,
      "id": "7650b117-e3fc-424a-ae94-988104652bdd",
      "createdDateTime": "2025-01-17T12:20:32.3403729-08:00",
      "lastModifiedDateTime": "2025-01-17T12:21:57-08:00",
      "approvalRules": [
        {
          "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
          "deferralInDays": 0,
          "classification": "nonSecurity",
          "cadence": "outOfBand"
        }
      ]
    }
  ]
}
```

