---
title: "Delete fixtureMap"
description: "Delete a fixture on a specified floor."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# Delete fixtureMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [fixture](../resources/fixturemap.md) on a specified floor.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "fixturemap_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/fixturemap-delete-permissions.md)]

> [!NOTE]
> The Exchange Admin role is required to delete a **fixtureMap**.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/fixtures/{fixturesImdfID}
```
> **Note:**
> * `{buildingPlaceId}` is the **placeId** of a [building](../resources/building.md) with which this [fixtureMap](../resources/fixturemap.md) is associated.
> * `{levelImdfId}` is the **id** of the level in the IMDF file.
> * `{fixtureImdfId}` is the **id** of the fixture in the IMDF file.

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
  "name": "delete_fixturemap"
}
-->
```http
DELETE https://graph.microsoft.com/beta/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/fixtures/005eb3b8-c95d-4d35-a8a0-22d3cb4d6002
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
<!--
{
  "type": "#page.annotation",
  "description": "Delete fixtureMap",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: microsoft.graph.microsoft.graph/places:
      /places/{var}/microsoft.graph.building/map/levels/{var}/fixtures/{var}
      Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.building' on 'place'. Possible issues:
        1) Doc bug where 'microsoft.graph.building' isn't defined on the resource.
        2) Doc bug where 'microsoft.graph.building' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
        3) Doc bug where 'place' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->

