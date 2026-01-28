---
title: "List rings"
description: "Get a list of the ring objects and their properties."
author: "andredm7"
ms.date: 01/27/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List rings

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ring](../resources/windowsupdates-ring.md) objects and their properties.

You can use this method with the following child object type: [qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_list_rings" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-list-rings-permissions.md)]

## HTTP request

To get a list of **qualityUpdateRing** objects:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET admin/windows/updates/policies/{policyId}/rings?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateRing')
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
  "name": "list_qualityupdatering"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/rings?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateRing')
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateRing"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateRing",
      "displayName": "Patch Tuesday Test",
      "description": "Quality update policy to test upcoming Patch Tuesday updates",
      "includedGroupAssignment": {
        "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
      },
      "excludedGroupAssignment": {
        "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
      },
      "deferralInDays": 5,
      "isPaused": false,
      "id": "a2c7637a-cda5-e59e-2385-972c4ee528d2",
      "createdDateTime": "2020-06-09T10:00:00Z",
      "lastModifiedDateTime": "2020-06-09T10:00:00Z",
      "isHotpatchEnabled": true
    }
  ]
}
```
