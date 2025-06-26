---
title: "Get fixtureMap"
description: "Get a fixtureMap object in IMDF format."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# Get fixtureMap

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [fixtureMap](../resources/fixturemap.md) object in IMDF format.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "fixturemap-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/fixturemap-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelImdfID}/fixtures
```

{buildingPlaceId} - **id** of the building with which this map is associated

{levelImdfId} - **id** of the level in the IMDF file

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [fixtureMap](../resources/fixturemap.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_fixturemap"
}
-->
``` http
GET https://graph.microsoft.com/beta/building/map/levels/{levelMapId}/fixtures/{fixtureMapId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fixtureMap"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.fixtureMap",
    "id": "87757cea-30f2-43f7-1ddb-7d669684b6e8",
    "properties": "String",
    "placeId": "String"
  }
}
```

