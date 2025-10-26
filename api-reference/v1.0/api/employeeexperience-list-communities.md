---
title: "List communities"
description: "Get a list of the Viva Engage community objects and their properties."
author: "aditijha4"
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
ms.date: 08/21/2024
---

# List communities

Namespace: microsoft.graph

Get a list of the Viva Engage [community](../resources/community.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "employeeexperience_list_communities" } -->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-list-communities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/communities
```

## Optional query parameters

This method supports the `$top`, `$select`, and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response. It also supports the `$orderby` parameter for the **displayName** property.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [community](../resources/community.md) objects in the response body.

## Examples

### Example 1: Get a list of communities 

The following example shows how to get a list of Viva Engage communities.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_community"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/employeeExperience/communities
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-community-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-community-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-community-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-community-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-community-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-community-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.community)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#employeeExperience/communities",
    "value": [
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTAzMzYyMTIyMTAifQ",
            "displayName": "All Company",
            "description": "This is the default group for everyone in the network",
            "privacy": "public",
            "groupId": "195d9ecd-f80e-4bab-af95-176eba253dff"
        },
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTAzNDY2Mzc2OTYifQ",
            "displayName": "TestCommunity5",
            "description": "Test community created via API",
            "privacy": "public",
            "groupId": "0bed8b86-5026-4a93-ac7d-56750cc099aa"
        }
    ]
}
```

### Example 2: Get a list of communities with pagination

The following example shows how to get a list of Viva Engage communities using the `$top` query parameter to set the page size of results. 

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_community_top"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/employeeExperience/communities?$top=2
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-community-top-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-community-top-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-community-top-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-community-top-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-community-top-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-community-top-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

If the number of communities exceeds 20 or you use the `$top` query parameter to set the page size of results, multiple query requests might be necessary to retrieve all results. In this scenario, the API continues to return a reference to the next page of results in the **@odata.nextLink** property with each response until no more pages remain to be retrieved.

The following example shows the response that includes the **@odata.nextLink** property.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.community)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#employeeExperience/communities",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/employeeExperience/communities?$skiptoken=UVWlYzI7VjE7MTE2NDUzNDU3OTIwOzIwO0RlbW8tdGVzdC01OztEaXNwbGF5TmFtZTtmYWXYYTs",
    "value": [
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTAzMzYyMTIyMTAifQ",
            "displayName": "All Company",
            "description": "This is the default group for everyone in the network",
            "privacy": "public",
            "groupId": "195d9ecd-f80e-4bab-af95-176eba253dff"
        },
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTAzNDY2Mzc2OTYifQ",
            "displayName": "TestCommunity5",
            "description": "Test community created via API",
            "privacy": "public",
            "groupId": "0bed8b86-5026-4a93-ac7d-56750cc099aa"
        }
    ]
}
```

