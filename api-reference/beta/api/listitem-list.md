---
author: spgraph-docs-team
description: "Get the collection of items in a list."
title: Retrieve items from a SharePoint list
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 04/05/2024
---
# Enumerate items in a list

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the collection of [items][item] in a [list][].

[list]: ../resources/list.md
[item]: ../resources/listitem.md

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "listitem_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/listitem-list-permissions.md)]

## HTTP request

```http
GET /sites/{site-id}/lists/{list-id}/items
GET /sites/{site-id}/lists/{list-id}/items?expand=fields
GET /sites/{site-id}/lists/{list-id}/items?expand=fields(select=Column1,Column2)
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [listItem][item] objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-list-items" } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}/items?expand=fields(select=Name,Color,Quantity)
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-list-items-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-list-items-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-list-items-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-list-items-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-list-items-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-list-items-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-list-items-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-list-items-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.listItem)", "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "2",
      "fields": {
        "Name": "Gadget",
        "Color": "Red",
        "Quantity": 503
       }
    },
    {
      "id": "4",
      "fields": {
        "Name": "Widget",
        "Color": "Blue",
        "Quantity": 2357
       }
    },
    {
      "id": "7",
      "fields": {
        "Name": "Gizmo",
        "Color": "Green",
        "Quantity": 92
       }
    }
  ]
}
```

## Filtering items in a list
Filtering can be used to retrieve a subset of the listItem collection.
Properties of the listItem as well listItem fields can be filtered.
If filtering on indexed fields, the service can only filter on a single indexed field at a time.
**Note:** Filtering works best on indexed columns

### Operations supported for filtering listItems in a list.
| Operator type         | Operator                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Equality operators    | <ul><li> Equals (`eq`) </li><li> Not equals (`ne`)</li></ul> |
| Relational operators  | <ul><li> Less than (`lt`) </li><li> Greater than (`gt`)</li><li> Less than or equal to (`le`)</li><li> Greater than or equal to (`ge`)</li></ul> |
| Functions             | <ul><li> Starts with (`startswith`) </li></ul>    |

#### Filtering on large lists
Depending on the number of items that match the filtering condition, the results either be returned all at once or in a paged manner.
Paged results typically occur for large lists where a large number of items match the filtering conditions.
The service goes through all items in the list in a increments (sliding window) and returns the set of listItems that match the filter condition along with a `@odata.nextLink`.
If an empty result is returned, there are no items within the current increment of items the service is handling that matches the filter condition.
If a `@odata.nextLink` URL is returned, there are more pages of data to retrieve in the session, even if the current response contains an empty result. 

### Example
<!-- { "blockType": "request", "name": "get-list-items", "scopes": "sites.read.all" } -->
```http
GET /sites/{site-id}/lists/{list-id}/items?expand=fields(select=Name,Color,Quantity)&$filter=fields/Quantity lt 600
```

### Response
<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.listItem)", "truncated": true } -->
```json
HTTP/1.1 200 OK
Content-type: application/json
{
  "value": [
    {
      "id": "2",
      "fields": {
        "Name": "Gadget",
        "Color": "Red",
        "Quantity": 503
       }
    },
    {
      "id": "7",
      "fields": {
        "Name": "Gizmo",
        "Color": "Green",
        "Quantity": 92
       }
    }
  ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "ListItem/Enumerate",
  "suppressions": [
  ]
}
-->


