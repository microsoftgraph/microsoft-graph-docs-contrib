---
title: "Get ring"
description: "Read the properties and relationships of ring object."
author: "andredm7"
ms.date: 10/22/2025
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# Get ring

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [ring](../resources/windowsupdates-ring.md) object.

You can use this method with the following child object type: [qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-ring-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-ring-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies/{policyId}/rings/{ringId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.windowsUpdates.ring](../resources/windowsupdates-ring.md) object or a derived type in the response body.

## Examples

### Request

The following example shows how to get a quality update ring.
<!-- {
  "blockType": "request",
  "name": "get_qualityupdatering"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/a7aa99c1-34a2-850c-5223-7816fde70713/rings/a2c7637a-cda5-e59e-2385-972c4ee528d2
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
  "value": {
    "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateRing",
    "displayName": "IT Test - Ring0",
    "description": "First deployment ring to test updates with IT devices",
    "includedGroupAssignment": {
      "@odata.type": "microsoft.graph.windowsUpdates.includedGroupAssignment"
    },
    "excludedGroupAssignment": {
      "@odata.type": "microsoft.graph.windowsUpdates.excludedGroupAssignment"
    },
    "deferralInDays": 3,
    "isPaused": false,
    "id": "a2c7637a-cda5-e59e-2385-972c4ee528d2",
    "createdDateTime": "2020-06-09T10:00:00Z",
    "lastModifiedDateTime": "2020-06-09T10:00:00Z",
    "isHotpatchEnabled": true
  }
}
```

