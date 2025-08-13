---
title: "building: ingestMapFile"
description: "Ingests the map file for a building in Places."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# building: ingestMapFile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Ingests the map file for a [building](../resources/building.md) in Places. 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "building-ingestmapfile-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/building-ingestmapfile-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /places/{placesBuildingId}/microsoft.graph.building/ingestMapFile
```

{placesBuildingId} - **PlaceID** of the building in Places with which this map should be associated

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
|file|String|Collection of IMDF map files for a building in Base64 zip format. [Learn more](https://learn.microsoft.com/en-us/microsoft-365/places/configure-maps-in-places) about supported geojsons in Places .|
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
POST /places/30ca79af-ecb7-46c2-a14b-afe264a91543/microsoft.graph.building/ingestMapFile
Content-Type: application/json

{
  "importSettings": {
    "isDryRun": false
  },
  "file": 
}
```

**TODO: Complete rest of example above**

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

