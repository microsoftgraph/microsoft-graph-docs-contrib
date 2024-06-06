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

This method supports the `$top`, `$orderby`, `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [community](../resources/community.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_community"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/communities
```

### Response

The following is an example of the response

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
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET employeeExperience/communities?$select=description,displayName",
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

