---
title: "List footprints"
description: "Get a list of footprintMap objects for building footprints and their properties."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# List footprints

Namespace: microsoft.graph

Get a list of [footprintMap](../resources/footprintmap.md) objects for [building](../resources/building.md) footprints and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "buildingmap-list-footprints-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/buildingmap-list-footprints-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{buildingPlaceId}/microsoft.graph.building/map/footprints
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [footprintMap](../resources/footprintmap.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_footprintmap",
  "sampleKeys": ["9748dc5b-3f08-407b-9a8d-f5ed626bf9e8"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/9748dc5b-3f08-407b-9a8d-f5ed626bf9e8/microsoft.graph.building/map/footprints
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.footprintMap)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "9748dc5b-3f08-407b-9a8d-f5ed626bf9e8",
      "properties": "{\"id\":\"9748dc5b-3f08-407b-9a8d-f5ed626bf9e8\",\"type\":\"Feature\",\"feature_type\":\"footprint\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8898407,37.3293601],[-121.8897741,37.3292754],[-121.8900648,37.3291363],[-121.890095,37.3291218],[-121.8902186,37.3290626],[-121.8902893,37.3290288],[-121.890306,37.3290208],[-121.8903241,37.3290121],[-121.8903448,37.3290023],[-121.8904115,37.3289703],[-121.8905398,37.3289089],[-121.8904671,37.328813],[-121.8902989,37.3285909],[-121.8903431,37.3285698],[-121.8900849,37.3282276],[-121.8899925,37.3281051],[-121.8899801,37.3280887],[-121.8897029,37.3277213],[-121.8893932,37.3278695],[-121.8893583,37.3278234],[-121.889263,37.3278691],[-121.8892979,37.3279151],[-121.8889445,37.3280843],[-121.8891129,37.3283067],[-121.8883222,37.3286852],[-121.8882612,37.3286045],[-121.8881734,37.3286454],[-121.8880921,37.3285367],[-121.8880906,37.3285348],[-121.8879295,37.3286539],[-121.8879744,37.3287081],[-121.8877977,37.3287926],[-121.8878163,37.3288172],[-121.8876396,37.3289018],[-121.8876686,37.3289402],[-121.887409,37.3290644],[-121.8873186,37.3291071],[-121.8870803,37.3292828],[-121.8869393,37.3293867],[-121.8870924,37.3295107],[-121.8870567,37.32954],[-121.887171,37.3296325],[-121.8874491,37.3298578],[-121.8875412,37.3299323],[-121.8875605,37.329948],[-121.8875651,37.3299517],[-121.8876704,37.3299012],[-121.8876825,37.3299172],[-121.8877675,37.3300294],[-121.8877788,37.3300444],[-121.8877818,37.3300483],[-121.887783,37.3300499],[-121.8878052,37.3300793],[-121.8878059,37.3300802],[-121.8878094,37.3300847],[-121.8878824,37.3301812],[-121.8883325,37.3299674],[-121.8883274,37.3299606],[-121.8882947,37.3299175],[-121.8884877,37.3298251],[-121.8885365,37.3298017],[-121.8885529,37.3297939],[-121.8885707,37.3298174],[-121.8885894,37.3298421],[-121.8886311,37.3298971],[-121.8886866,37.3299706],[-121.888774,37.3299287],[-121.8887889,37.3299484],[-121.8887977,37.3299442],[-121.8889657,37.3298638],[-121.8889744,37.3298596],[-121.8889595,37.3298399],[-121.8890401,37.3298013],[-121.8890469,37.3297981],[-121.8890589,37.3297923],[-121.8891236,37.3297614],[-121.8891473,37.3297928],[-121.8893961,37.3299621],[-121.8894513,37.3300349],[-121.8894531,37.3300373],[-121.8900242,37.329764],[-121.8901096,37.3296945],[-121.8898523,37.3293547],[-121.8898407,37.3293601]]]},\"properties\":{\"name\":null,\"building_ids\":[\"26f04b4f-9ae2-45e3-99d1-393c66d58eb4\"],\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.88904,37.3289553]},\"places_category\":\"ground\",\"directory_id\":\"91ac6c16-cda9-4506-b55d-e1f4dac3cbe7\"}}"
    }
  ]
}
```
<!--
{
  "type": "#page.annotation",
  "description": "List footprints",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: microsoft.graph.microsoft.graph/places:
      /places/{var}/microsoft.graph.building/map/footprints
      Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.building' on 'place'. Possible issues:
        1) Doc bug where 'microsoft.graph.building' isn't defined on the resource.
        2) Doc bug where 'microsoft.graph.building' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
        3) Doc bug where 'place' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
