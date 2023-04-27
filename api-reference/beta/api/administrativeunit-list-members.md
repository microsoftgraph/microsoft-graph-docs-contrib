---
title: "List members"
description: "Use this API to get the members list (users, groups, and devices) in an administrative unit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List members

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to get the members list (users, groups, and devices) in an administrative unit.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | AdministrativeUnit.Read.All, Directory.Read.All, AdministrativeUnit.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AdministrativeUnit.Read.All, Directory.Read.All, AdministrativeUnit.ReadWrite.All, Directory.ReadWrite.All |

> [!NOTE]
> To view the members with a hidden membership in an administrative unit, the app must be granted the `Member.Read.Hidden` delegated or application permission.

[!INCLUDE [rbac-admin-units-apis-read](../includes/rbac-for-apis/rbac-admin-units-apis-read.md)]

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

```http
GET /administrativeUnits/{id}/members
GET /administrativeUnits/{id}/members/$ref
```
## Optional query parameters
This method (when used without `$ref`) supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$search`, `$count`, and `$filter`. OData cast is also enabled, for example, you can cast to get just the users that are a member of the administrative unit. 

`$search` is supported on the **displayName** and **description** properties only. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

## Request headers
| Header      |Value|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| ConsistencyLevel  | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries). |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md), [group](../resources/group.md), or [device](../resources/device.md) objects in the response body. Adding `$ref` at the end of the request returns a collection of only `@odata.id` URLs of the members.

## Examples
### Example 1: List member objects

#### Request
The following request will list the members of the administrative unit, returning a collection of users and/or groups.

```http
GET https://graph.microsoft.com/beta/administrativeUnits/{id}/members
```

#### Response

The following is an example of the response. 
>**Note:** The response object shown here might be shortened for readability.
 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value":[
    {
      "@odata.type":"#microsoft.graph.user",
      "id":"492c5308-59fd-4740-9c83-4b3db07a6d70"
      "accountEnabled":true,
      "businessPhones":[],
      "companyName":null,
      "displayName":"Demo User"
    },
    {
      "@odata.type":"#microsoft.graph.group",
      "id":"07eaa5c7-c9b6-45cf-8ff7-3147d5122caa",
      "description":"This group is the best ever",
      "displayName":"Awesome group"
    }
  ]
}
```

### Example 2: List member references

#### Request

The following request will list the member references of the administrative unit, returning a collection of `@odata.id` references to the members.

```
GET https://graph.microsoft.com/beta/administrativeUnits/{id}/members/$ref
```

#### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value":[
    {
      "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/492c5308-59fd-4740-9c83-4b3db07a6d70"
    },
    {
      "@odata.id": "https://graph.microsoft.com/beta/directoryObjects/07eaa5c7-c9b6-45cf-8ff7-3147d5122caa"
    }
  ]
}
```


