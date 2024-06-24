---
title: "List communities"
description: "Get a list of the community objects and their properties."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
---

# List communities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the Viva Engage [community](../resources/community.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "employeeexperience-list-communities-permissions"
}
-->
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

This method supports the `$top`, `$select`, and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response. It also supports `$orderby` parameter for the `displayName` property.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [community](../resources/community.md) objects in the response body.

## Examples

### Example 1: Get a list of communities 

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_community"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/communities
```

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/communities",
    "value": [
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTEzMjYyODk5MjAifQ",
            "displayName": "All Company",
            "description": "This is the default group for everyone in the network",
            "privacy": "public",
            "groupId": "195d9ecd-f80e-4bab-af95-176eba253dfa"
        },
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTE0NzY2Mzc2OTYifQ",
            "displayName": "TestCommunity5",
            "description": "Test community created via API",
            "privacy": "public",
            "groupId": "0bed8b86-5026-4a93-ac7d-56750cc099f1"
        }
    ]
}
```

### Example 2: Get a list of communities with client-side paging

#### Request

The following example shows a request with `$top` query parameter, to set page size of results. 

<!-- {
  "blockType": "request",
  "name": "list_community"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/communities?$top=2
```

#### Response

If there are more than 20 communities, or you're using the `$top` query parameter to set page size of results, more than one query request may be required to retrieve all the results.
In this scenario, the API will continue to return a reference to the next page of results in the `@odata.nextLink` property with each response until there are no more pages of results to retrieve. 

The following example shows the response including the `@odata.nextLink` property.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#employeeExperience/communities",
    "@odata.nextLink": "https://graph.microsoft.com/beta/employeeExperience/communities?$skiptoken=UVWlYzI7VjE7MTE2NDUzNDU3OTIwOzIwO0RlbW8tdGVzdC01OztEaXNwbGF5TmFtZTtmYWXYZTs",
    "value": [
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTEzMjYyODk5MjAifQ",
            "displayName": "All Company",
            "description": "This is the default group for everyone in the network",
            "privacy": "public",
            "groupId": "195d9ecd-f80e-4bab-af95-176eba253dfa"
        },
        {
            "id": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiIxOTE0NzY2Mzc2OTYifQ",
            "displayName": "TestCommunity5",
            "description": "Test community created via API",
            "privacy": "public",
            "groupId": "0bed8b86-5026-4a93-ac7d-56750cc099f1"
        }
    ]
}
```

