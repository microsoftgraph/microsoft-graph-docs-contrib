---
<<<<<<<< HEAD:api-reference/beta/api/levelmap-delete-units.md
title: "Delete unitMap"
description: "Delete a unitMap object."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Delete unitMap
========
title: "Remove threatIntelligencePolicy from a filteringProfile"
description: "Remove threatIntelligencePolicy from a filteringProfile"
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Remove threatIntelligencePolicy from a filteringProfile
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencepolicylink-delete-policy.md

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

<<<<<<<< HEAD:api-reference/beta/api/levelmap-delete-units.md
Delete a [unitMap](../resources/unitmap.md) object.
========
Remove a [threatIntelligencePolicy](../resources/networkaccess-threatintelligencepolicy.md) object from a [filteringProfile](../resources/networkaccess-filteringprofile.md).
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencepolicylink-delete-policy.md

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
<<<<<<<< HEAD:api-reference/beta/api/levelmap-delete-units.md
  "name": "levelmap-delete-units-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/levelmap-delete-units-permissions.md)]
========
  "name": "networkaccess-threatintelligencepolicylink-delete-policy-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-threatintelligencepolicylink-delete-policy-permissions.md)]
[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencepolicylink-delete-policy.md

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
<<<<<<<< HEAD:api-reference/beta/api/levelmap-delete-units.md
DELETE places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/units/{unitImdfID}
========
DELETE /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/{id}
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencepolicylink-delete-policy.md
```

{buildingPlaceId} - **placeID** of the building with which this map is associated

{levelImdfID} - **id** of the level with which this map is associated

{unitImdfID}- **id** of the unit in IMDF with which this map is associated

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
<<<<<<<< HEAD:api-reference/beta/api/levelmap-delete-units.md
  "name": "delete_unitmap"
}
-->
``` http
DELETE places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/map/levels/81e9fd76-b34a-45f6-a6dc-1f172f01e849/units/9e0cdcd1-7b86-4f50-839d-d8e4a5ac9237
========
  "name": "delete_policy_from_threatintelligencepolicylink"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/{id}
>>>>>>>> origin/main:api-reference/beta/api/networkaccess-threatintelligencepolicylink-delete-policy.md
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

