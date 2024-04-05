---
title: "List members"
description: "Use this API to get the members list (users, groups, and devices) in an administrative unit."
author: "DougKirschner"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: apiPageType
---

# List members

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to get the members list (users, groups, and devices) in an administrative unit.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "administrativeunit_list_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/administrativeunit-list-members-permissions.md)]

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

`$search` is supported on the **displayName** and **description** properties only. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

## Request headers
| Header      |Value|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel  | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body
Don't supply a request body for this method.

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

The following example shows the response.
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
The following example shows the response.
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

<!-- {
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api/administrativeunit-list-members.md:
      Failed to parse enumeration values for type microsoft.graph.list. Table requires a column header named one of the following: Member, Name, Value"
  ]
} -->
