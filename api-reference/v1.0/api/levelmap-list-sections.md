---
title: "List sections"
description: "Get a list of the sectionMap objects and their properties."
author: tiwarisakshi02
ms.date: 11/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# List sections

Namespace: microsoft.graph

Get a list of the [sectionMap](../resources/sectionmap.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "levelmap_list_sections" } -->
[!INCLUDE [permissions-table](../includes/permissions/levelmap-list-sections-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{buildingPlaceId}/microsoft.graph.building/map/levels/{levelMapId}/sections
```
> **Note:**
> * `{buildingPlaceId}` is the **placeId** of a [building](../resources/building.md) for which you want to list the [sectionMap](../resources/sectionmap.md).
> * `{levelImdfId}` is the **id** of the level in the IMDF file for which you want to list the [sectionMap](../resources/sectionmap.md).

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sectionMap](../resources/sectionmap.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_sectionmap",
  "sampleKeys": ["151e85a7-c0b8-4519-997e-1a0858255704", "e537d463-475b-43c3-a650-184566c68bc9"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/places/151e85a7-c0b8-4519-997e-1a0858255704/microsoft.graph.building/map/levels/e537d463-475b-43c3-a650-184566c68bc9/sections
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sectionMap)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "placeId": null,
      "id": "005eb3b8-c95d-4d35-a8a0-26e3cb4d6998",
      "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-26e3cb4d6998\",\"type\":\"Feature\",\"feature_type\":\"section\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test section 01\"},\"restriction\":\"restricted\",\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"address_id\":\"mockAddressId\",\"accessibility\":\"wheelchair\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"places_category\":\"unspecified\"}}"
    },
    {
      "placeId": null,
      "id": "005eb3b8-c95d-4d35-a8a0-22d6nb4d6998",
      "properties": "{\"id\":\"005eb3b8-c95d-4d35-a8a0-22d6nb4d6998\",\"type\":\"Feature\",\"feature_type\":\"section\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8889415,37.3295396],[-121.8889137,37.329503],[-121.8889082,37.3294956],[-121.888907,37.3294941],[-121.8888551,37.3295189],[-121.8888895,37.3295644],[-121.8889415,37.3295396]]]},\"properties\":{\"name\":{\"en\":\"Test section 02\"},\"restriction\":\"restricted222222\",\"level_id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"address_id\":\"mockAddressId\",\"accessibility\":\"wheelchair222222\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.8888983,37.3295292]},\"places_category\":\"unspecified\"}}"
    }
  ]
}
```
<!--
{
  "type": "#page.annotation",
  "description": "List sections",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: microsoft.graph.microsoft.graph/places:
      /places/{var}/microsoft.graph.building/map/levels/{var}/sections
      Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.building' on 'place'. Possible issues:
        1) Doc bug where 'microsoft.graph.building' isn't defined on the resource.
        2) Doc bug where 'microsoft.graph.building' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
        3) Doc bug where 'place' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
