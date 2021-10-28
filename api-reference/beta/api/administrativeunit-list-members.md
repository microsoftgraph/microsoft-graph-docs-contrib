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
|Delegated (work or school account) | AdministrativeUnit.Read.All, Directory.Read.All, AdministrativeUnit.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | AdministrativeUnit.Read.All, Directory.Read.All, AdministrativeUnit.ReadWrite.All, Directory.ReadWrite.All |

> Note: To list the members of a hidden membership in an administrative unit, the Member.Read.Hidden permission is required.

[!INCLUDE [limited-info](../../includes/limited-info.md)]

## HTTP request

```http
GET /administrativeUnits/{id}/members
GET /administrativeUnits/{id}/members/$ref
```
## Optional query parameters
This method (when used without $ref) supports the [OData query parameters](https://docs.microsoft.com/en-us/graph/query-parameters) to help customize the response, including $search, $count, and $filter. OData cast is also enabled, for example, you can cast to get just the users that are a member of the administrative unit. You can use $search on the displayName and description properties. When items are added or updated for this resource, they are specially indexed for use with the $count and $search query parameters. There can be a slight delay between when an item is added or updated and when it is available in the index.

## Request headers
| Header      |Value|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |
| ConsistencyLevel  | eventual. This header and $count are required when using the $search, $filter, $orderby, or OData cast query parameters. It uses an index that might not be up-to-date with recent changes to the object. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [user](../resources/user.md), [group](../resources/group.md), or [device](../resources/device.md) objects in the response body. Adding `$ref` at the end of the request returns a collection of only `@odata.id` URLs of the members.

## Examples
##### List member objects
The following request will list the members of the administrative unit, returning a collection of users and/or groups.

```http
GET https://graph.microsoft.com/beta/administrativeUnits/{id}/members
```

Here is an example of the response. Note: The response object shown here might be shortened for readability.
 
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 100

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

##### List member references
The following request will list the member references of the administrative unit, returning a collection of `@odata.id` references to the members.
```
GET https://graph.microsoft.com/beta/administrativeUnits/{id}/members/$ref
```
Here is an example of the response. Note: The response object shown here might be shortened for readability.
 
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 100

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


