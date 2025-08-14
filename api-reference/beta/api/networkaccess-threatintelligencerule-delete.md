---
<<<<<<<< HEAD:api-reference/beta/api/building-delete-map.md
title: "Delete buildingMap"
description: "Delete a buildingMap object."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Delete buildingMap
========
title: "Delete threatIntelligenceRule"
description: "Delete a threatIntelligenceRule object."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Delete threatIntelligenceRule
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencerule-delete.md

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

<<<<<<<< HEAD:api-reference/beta/api/building-delete-map.md
Delete the [map](../resources/buildingmap.md) of a specific building.
========
Delete a [threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) object.
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencerule-delete.md

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
<<<<<<<< HEAD:api-reference/beta/api/building-delete-map.md
  "name": "building-delete-map-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/building-delete-map-permissions.md)]
========
  "name": "networkaccess-threatintelligencerule-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencerule-delete-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencerule-delete.md

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
<<<<<<<< HEAD:api-reference/beta/api/building-delete-map.md
DELETE /places/{buildingPlaceId}/microsoft.graph.building/map
========
DELETE /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policyRules/{id}
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencerule-delete.md
```

{buildingPlaceId} - **PlaceID** of the building in Places with which this map is associated

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
<<<<<<<< HEAD:api-reference/beta/api/building-delete-map.md
  "name": "delete_buildingmap"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/map
========
  "name": "delete_threatintelligencerule"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/networkAccess/filteringProfiles/ab4f3459-c39d-4e99-b8d0-b1aee4726b84/policies/ac253559-37a0-4f72-b666-103420b94e38/policyRules/0823cb1e-644b-4585-80db-1c1055894ec7
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencerule-delete.md
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

