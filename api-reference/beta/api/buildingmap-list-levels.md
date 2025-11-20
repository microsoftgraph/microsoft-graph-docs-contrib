---
title: "List levels"
description: "Get a list of the levelMap objects and their properties."
author: tiwarisakshi02
ms.date: 06/12/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: apiPageType
---

# List levels

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [levelMap](../resources/levelmap.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "buildingmap_list_levels" } -->
[!INCLUDE [permissions-table](../includes/permissions/buildingmap-list-levels-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{buildingPlaceId}/microsoft.graph.building/map/levels
```
> **Note:** `{buildingPlaceId}` is the unique **placeId** of a [building](../resources/building.md) with which the [levelMap](../resources/levelmap.md) objects are associated.

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [levelMap](../resources/levelmap.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_levelmap",
  "sampleKeys": ["4bff9586-c9ee-401d-9d35-c476231a33e6"]
}
-->
``` http
GET https://graph.microsoft.com/beta/places/4bff9586-c9ee-401d-9d35-c476231a33e6/microsoft.graph.building/map/levels
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-levelmap-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-levelmap-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-levelmap-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-levelmap-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-levelmap-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-levelmap-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.levelMap)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "placeId": "4bff9586-c9ee-401d-9d35-c476231a33e6",
      "id": "e537d463-475b-43c3-a650-184566c68bc9",
      "properties": "{\"id\":\"e537d463-475b-43c3-a650-184566c68bc9\",\"type\":\"Feature\",\"feature_type\":\"level\",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[-121.8891473,37.3297928],[-121.8893961,37.3299621],[-121.8894513,37.3300349],[-121.8894531,37.3300373],[-121.8891236,37.3297614],[-121.8891473,37.3297928]……]]},\"properties\":{\"name\":{\"en\":\"Test Floor 1\"},\"building_ids\":[\"26f04b4f-9ae2-45e3-99d1-393c66d58eb4\"],\"address_id\":\"e105efb7-b0d1-4144-8b8e-72eadf95724f\",\"display_point\":{\"type\":\"Point\",\"coordinates\":[-121.88904,37.3289553]},\"places_category\":\"unspecified\",\"directory_id\":\"4bff9586-c9ee-401d-9d35-c476231a33e6\",\"ordinal\":0}}"
    }
  ]
}
```
<!--
{
  "type": "#page.annotation",
  "description": "List levels",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: microsoft.graph.microsoft.graph/places:
      /places/{var}/microsoft.graph.building/map/levels
      Uri path requires navigating into unknown object hierarchy: missing property 'microsoft.graph.building' on 'place'. Possible issues:
        1) Doc bug where 'microsoft.graph.building' isn't defined on the resource.
        2) Doc bug where 'microsoft.graph.building' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
        3) Doc bug where 'place' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->

