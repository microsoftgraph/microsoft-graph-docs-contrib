---
title: "List deletedItems (directory objects)"
description: "Retrieve a list of recently deleted items from deleted items."
author: "keylimesoda"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List deletedItems (directory objects)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of recently deleted directory objects. Currently, deleted items functionality is only supported for the [application](../resources/application.md), [servicePrincipal](../resources/serviceprincipal.md), [group](../resources/group.md), [administrative unit](../resources/administrativeunit.md), and [user](../resources/user.md) resources.

>**Note:** Deleted security groups are deleted permanently and can't be retrieved through this API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### For applications and service principals:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.Read.All, Application.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All   |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Application.Read.All, Application.ReadWrite.All, Directory.Read.All |

### For users:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application | User.Read.All, User.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |

### For groups:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.Read.All, Group.ReadWrite.All, Directory.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Read.All, Group.ReadWrite.All, Directory.Read.All |

### For administrative units:

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AdministrativeUnit.Read.All, AdministrativeUnit.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AdministrativeUnit.Read.All, AdministrativeUnit.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http 
GET /directory/deleteditems/microsoft.graph.application
GET /directory/deleteditems/microsoft.graph.servicePrincipal
GET /directory/deleteditems/microsoft.graph.group
GET /directory/deletedItems/microsoft.graph.user
GET /directory/deletedItems/microsoft.graph.administrativeUnit
```

The OData cast type is a required part of the URI and calling `GET /directory/deleteditems` without a type is **not** supported.

## Optional query parameters

This method supports the query parameters that are supported by the resource that is specified by the OData cast. That is, `$count`, `$expand`, `$filter`, `$orderBy`, `$search`, `$select`, and `$top` query parameters. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For example:

```msgraph-interactive
https://graph.microsoft.com/beta/directory/deletedItems/microsoft.graph.group?&$count=true&$orderBy=deletedDateTime desc&$select=id,displayName,deletedDateTime
ConsistencyLevel: eventual
```

This example requires the **ConsistencyLevel** header because the `$orderBy` and `$count` query parameters are used in the query.

### Examples using the $orderBy OData query parameter

The `$orderBy` OData query parameter is supported on the **deletedDateTime**, **displayName**, and **userPrincipalName** properties of the deleted object types. On the **deletedDateTime** property, the query requires adding the [advanced query parameters](/graph/aad-advanced-queries) (**ConsistencyLevel** header set to `true` and `$count=true` query string).

| OData cast | Properties supporting $orderBy | Example |
| :--- | :--- | :--- |
| microsoft.graph.user | deletedDateTime, displayName, userPrincipalName | /directory/deletedItems/microsoft.graph.user?$orderBy=userPrincipalName |
| microsoft.graph.group | deletedDateTime, displayName | /directory/deletedItems/microsoft.graph.group?$orderBy=deletedDateTime asc&$count=true |
| microsoft.graph.application | deletedDateTime, displayName | /directory/deletedItems/microsoft.graph.application?$orderBy=displayName |
| microsoft.graph.device | deletedDateTime, displayName | /directory/deletedItems/microsoft.graph.device?$orderBy=deletedDateTime&$count=true |

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer &lt;code&gt; *Required*|
| Accept  | application/json |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [directoryObject](../resources/directoryobject.md) objects in the response body.
## Examples

### Example 1: Retrieve deleted groups

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_deleteditems"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/deleteditems/microsoft.graph.group
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-deleteditems-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-deleteditems-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-deleteditems-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-deleteditems-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-deleteditems-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#groups",
  "value": [
    {
      "id":"46cc6179-19d0-473e-97ad-6ff84347bbbb",
      "displayName":"SampleGroup",
      "groupTypes":["Unified"],
      "mail":"example@contoso.com",
      "mailEnabled":true,
      "mailNickname":"Example",
      "securityEnabled":false,
      "visibility":"Public"
    }
  ]
}
```

### Example 2: Retrieve the count of deleted user objects and order the results by the deletedDateTime property

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_deleteditems_count"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/directory/deletedItems/microsoft.graph.group?$count=true&$orderBy=deletedDateTime asc&$select=id,displayName,deletedDateTime
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-deleteditems-count-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-deleteditems-count-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-deleteditems-count-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-deleteditems-count-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-deleteditems-count-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups(id,displayName,deletedDateTime)",
    "@odata.count": 2,
    "value": [
        {
            "id": "c31799b8-0683-4d70-9e91-e032c89d3035",
            "displayName": "Role assignable group",
            "deletedDateTime": "2021-10-26T16:56:36Z"
        },
        {
            "id": "74e45ce0-a52a-4766-976c-7201b0f99370",
            "displayName": "Role assignable group",
            "deletedDateTime": "2021-10-26T16:58:37Z"
        }
    ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List deleteditems",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
