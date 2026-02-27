---
title: "building: ingestMapFile"
description: "Ingest the map file for a building in Places."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# building: ingestMapFile

Namespace: microsoft.graph

Ingest the map file for a [building](../resources/building.md) in Places. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "building_ingestmapfile" } -->
[!INCLUDE [permissions-table](../includes/permissions/building-ingestmapfile-permissions.md)]

> [!NOTE]
> The Exchange Admin role is required to ingest map files.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /places/{buildingPlaceId}/microsoft.graph.building/ingestMapFile
```
> **Note:** `{buildingPlaceId}` is the unique **placeId** of the [building](../resources/building.md) in Places with which this map should be associated.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|file|String|Collection of IMDF map files for a building in Base64-encoded ZIP format. [Learn more](/microsoft-365/places/configure-maps-in-places) about supported GeoJSONs in Places.|
|importSetting|[importBuildingMapSetting](../resources/importbuildingmapsetting.md)|Settings that can be used during import.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "buildingthis.ingestmapfile"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/ingestMapFile
Content-Type: application/json

{
  "importSettings": {
    "isDryRun": false
  },
  "file": "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"
}
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

