---
title: "List rings"
description: "Get a list of the ring objects and their properties."
author: "andredm7"
ms.date: 02/05/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List rings

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [ring](../resources/windowsupdates-ring.md) objects and their properties.

You can use this method with the following child object types: [driverUpdateRing](../resources/windowsupdates-driverupdatering.md), [featureUpdateRing](../resources/windowsupdates-featureupdatering.md), and [qualityUpdateRing](../resources/windowsupdates-qualityupdatering.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "windowsupdates_policy_list_rings" } -->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-policy-list-rings-permissions.md)]

[!INCLUDE [rbac-windows-updates-apis](../includes/rbac-for-apis/rbac-windows-updates-apis.md)]

## HTTP request

To get all ring objects for a policy or only rings of a specific derived type:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/windows/updates/policies/{policyId}/rings
GET /admin/windows/updates/policies/{policyId}/rings/microsoft.graph.windowsUpdates.driverUpdateRing
GET /admin/windows/updates/policies/{policyId}/rings/microsoft.graph.windowsUpdates.featureUpdateRing
GET /admin/windows/updates/policies/{policyId}/rings/microsoft.graph.windowsUpdates.qualityUpdateRing
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

The following example shows how to get a list that contains each supported ring type.
<!-- {
  "blockType": "request",
  "name": "list_ring"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/policies/45a01ef3-fb4b-8c1d-2428-1f060464033c/rings
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.windowsUpdates.ring)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateRing",
      "createdDateTime": "2026-09-28T11:00:00Z",
      "deferralInDays": 5,
      "description": "Pilot devices for driver and firmware updates",
      "displayName": "Driver pilot",
      "excludedGroupAssignment": {
        "assignments": []
      },
      "id": "44444444-4444-4444-8444-444444444444",
      "includedGroupAssignment": {
        "assignments": [
          {
            "groupId": "77777777-7777-4777-8777-777777777777"
          }
        ]
      },
      "isPaused": false,
      "lastModifiedDateTime": "2026-09-28T11:00:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateRing",
      "createdDateTime": "2026-09-28T11:05:00Z",
      "deferralInDays": 0,
      "description": "Pilot devices for feature updates",
      "displayName": "Feature pilot",
      "excludedGroupAssignment": {
        "assignments": []
      },
      "id": "55555555-5555-4555-8555-555555555555",
      "includedGroupAssignment": {
        "assignments": [
          {
            "groupId": "88888888-8888-4888-8888-888888888888"
          }
        ]
      },
      "isOfferOptional": false,
      "isPaused": false,
      "lastModifiedDateTime": "2026-09-28T11:05:00Z",
      "offerDurationInDays": 1,
      "offerIntervalInDays": 0
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateRing",
      "createdDateTime": "2026-09-28T11:10:00Z",
      "deferralInDays": 2,
      "description": "Production devices for monthly quality updates",
      "displayName": "Quality production",
      "excludedGroupAssignment": {
        "assignments": []
      },
      "id": "66666666-6666-4666-8666-666666666666",
      "includedGroupAssignment": {
        "assignments": [
          {
            "groupId": "99999999-9999-4999-8999-999999999999"
          }
        ]
      },
      "isHotpatchEnabled": true,
      "isPaused": false,
      "lastModifiedDateTime": "2026-09-28T11:10:00Z"
    }
  ]
}
```
