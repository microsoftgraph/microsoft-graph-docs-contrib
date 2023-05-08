---
title: "directoryObject: delta"
description: "Get newly created, updated, or deleted directory objects without performing a full read of the entire directoryObject collection."
ms.localizationpriority: medium
author: "jzhu2017"
ms.prod: "directory-management"
doc_type: apiPageType
---

# directoryObject: delta

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Namespace: microsoft.graph

Get newly created, updated, or deleted directory objects without performing a full read of the entire directoryObject collection. For more information about the delta function, see [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview) for details.

## Permissions

The following table shows the least privileged permission that's required by each resource type when calling this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource                     | Delegated (work or school account) | Application | Delegated (personal Microsoft account) |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| [application](../resources/application.md)     | Application.Read.All | Application.Read.All | Not supported |
| [administrativeUnit](../resources/administrativeunit.md)     | AdministrativeUnit.Read.All | AdministrativeUnit.Read.All | Not supported |
| [device](../resources/device.md)     | Device.Read.All | Device.Read.All | Not supported |
| [directoryRole](../resources/directoryrole.md)     | RoleManagement.Read.Directory | RoleManagement.Read.Directory | Not supported |
| [group](../resources/group.md)         | Group.Read.All | Group.Read.All | Not supported |
| [orgContact](../resources/orgcontact.md)     | OrgContact.Read.All | OrgContact.Read.All | Not supported |
| [servicePrincipal](../resources/serviceprincipal.md)     | Application.Read.All | Application.Read.All | Not supported |
| [user](../resources/user.md)           | User.Read.All | User.Read.All | Not supported |

## HTTP request

Track changes for a collection of a directory object type.

<!-- { "blockType": "ignored" } -->
```http
GET /directoryObjects/delta?$filter=isof('microsoft.graph.application')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.administrativeUnit')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.device')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.directoryRole')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.group')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.orgContact')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.servicePrincipal')
GET /directoryObjects/delta?$filter=isof('microsoft.graph.user')
```

Track changes for a directory object.

<!-- { "blockType": "ignored" } -->
```http
GET /directoryObjects/delta?$filter=id eq '{id}'
```

### OData query parameters

This method supports optional OData query parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The _id_ property is always returned.
- When filtering multiple objects, for example, `/directoryObjects/delta/?$filter= id eq '477e9fc6-5de7-4406-bb2a-7e5c83c9ffff' or id eq '004d6a07-fe70-4b92-add5-e6e37b8affff'`, there is a limit of 50 filter expressions.
- You can combine the `$filter` syntaxes. For example, `$filter=isof('{resource type}') or id eq '{id}'`. This provides an **intersection** of objects specified by matching `{resource type}` and the resource type of `{id}`.

## Request headers

| Name | Description |
|:--|:--|
| Authorization | Bearer &lt;token&gt; |
| Content-Type | application/json |
| Prefer | return=minimal <br><br>Specifying this header with a request that uses a `@odata.deltaLink` would return only the object properties that have changed since the last round. Optional. |

## Request body

Do not supply a request body for this method.

### Response

If successful, this method returns `200 OK` response code and [directoryObject](../resources/directoryobject.md) collection object in the response body. The response also includes a state token which is either a `@odata.nextLink` URL or a `@odata.deltaLink` URL.

- If a `@odata.nextLink` URL is returned:

  - This indicates there are additional pages of data to be retrieved in the session. The application continues making requests using the `@odata.nextLink` URL until a `@odata.deltaLink` URL is included in the response.
  - The response includes the same set of properties as in the initial delta query request. This allows you to capture the full current state of the objects when initiating the delta cycle.

- If a `@odata.deltaLink` URL is returned:
  - This indicates there is no more data about the existing state of the resource to be returned. Save and use the `@odata.deltaLink` URL to learn about changes to the resource in the next round.
  - You have a choice to specify the `Prefer:return=minimal` header, to include in the response values for only the properties that have changed since the time the `@odata.deltaLink` was issued.

#### Default: return the same properties as initial delta request

By default, requests using a `@odata.deltaLink` or `@odata.nextLink` return the same properties as selected in the initial delta query in the following ways:

- If the property has changed, the new value is included in the response. This includes properties being set to null value.
- If the property has not changed, the old value is included in the response.
- If the property has never been set before it will not be included in the response at all.

> **Note:** With this behavior, by looking at the response it is not possible to tell whether a property is changing or not. Also, the delta responses tend to be large because they contain all property values - as shown in [Example 3](#example-3-retrieve-changes-to-specific-properties-for-a-collection-of-users-and-groups).

#### Alternative: return only the changed properties

Adding an optional request header - `prefer:return=minimal` - results in the following behavior:

- If the property has changed, the new value is included in the response. This includes properties being set to null value.
- If the property has not changed, the property is not included in the response at all. (Different from the default behavior.)

> **Note:** The header can be added to a `@odata.deltaLink` request at any point in time in the delta cycle. The header only affects the set of properties included in the response and it does not affect how the delta query is executed. See [Example 4](#example-4-retrieve-specific-properties-only-if-they-changed-for-a-collection-of-users-and-groups).

## Examples

### Example 1: Retrieve changes for a collection of users and groups

#### Request

The following is an example of the request using the `$filter=isof('{resource type}')` parameter on users and groups. There is no `$select` parameter, so a default set of properties is tracked and returned.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryObject_delta_filter_isof"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta?filter=isof('microsoft.graph.user') or isof('microsoft.graph.group')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-delta-filter-isof-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-delta-filter-isof-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-delta-filter-isof-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-delta-filter-isof-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-delta-filter-isof-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response when using `@odata.deltaLink` obtained from the query initialization with `$filter=isof('{resource type}')`. Note the presence of the _members@delta_ property which includes the ids of member objects in the group.

> **Note:** The response object shown here might be shortened for readability.

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
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects","@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvY1FSSc_",
  "value":[
    {
      "@odata.type": "#microsoft.graph.user",
      "businessPhones": [
          "+1 425 555 0109"
      ],
      "displayName": "Adele Vance",
      "givenName": "Adele",
      "jobTitle": "Retail Manager",
      "mail": "AdeleV@contoso.onmicrosoft.com",
      "mobilePhone": "+1 425 555 0109",
      "officeLocation": "18/2111",
      "preferredLanguage": "en-US",
      "surname": "Vance",
      "userPrincipalName": "AdeleV@contoso.onmicrosoft.com",
      "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd"
    },
    {
      "@odata.type": "#microsoft.graph.group",
      "createdDateTime":"2021-03-12T10:36:14Z",
      "description":"This is the default group for everyone in the network",
      "displayName":"All Company",
      "groupTypes": [
        "Unified"
      ],
      "mail": "allcompany@contoso.com",
      "id": "72052a9a-c466-4995-8210-95a1c1221995",
      "members@delta": [
        {
          "@odata.type": "#microsoft.graph.user",
          "id": "693acd06-2877-4339-8ade-b704261fe7a0"
        },
        {
          "@odata.type": "#microsoft.graph.user",
          "id": "49320844-be99-4164-8167-87ff5d047ace"
        }
      ]
    }
  ]
}
```

### Example 2: Retrieve a collection of changes for a directory object

#### Request

The following example shows the request using the `$filter=id eq '{id}'` parameter. There is no `$select` parameter, so a default set of properties is tracked and returned.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryObject_delta_filter_id"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta?$filter=id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-delta-filter-id-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-delta-filter-id-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-delta-filter-id-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-delta-filter-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-delta-filter-id-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response when using `@odata.deltaLink` obtained from the query initialization with `$filter=id eq '{id}'`.

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
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "@odata.type": "#microsoft.graph.group",
      "createdDateTime":"2021-03-12T10:36:14Z",
      "description":"This is the default group for everyone in the network",
      "displayName":"All Company",
      "groupTypes": [
        "Unified"
      ],
      "mail": "allcompany@contoso.com",
      "id": "72052a9a-c466-4995-8210-95a1c1221995",
      "members@delta": [
        {
          "@odata.type": "#microsoft.graph.user",
          "id": "693acd06-2877-4339-8ade-b704261fe7a0"
        },
        {
          "@odata.type": "#microsoft.graph.user",
          "id": "49320844-be99-4164-8167-87ff5d047ace"
        }
      ]
    }
  ]
}
```

### Example 3: Retrieve changes to specific properties for a collection of users and groups

#### Request

The following example shows the initial request selecting one property each from a user and group for change tracking, with default response behavior:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryObject_delta_with_select"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta?$filter=isof('microsoft.graph.user') or isof('microsoft.graph.group')&$select=microsoft.graph.user/surname,microsoft.graph.group/displayName
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-delta-with-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-delta-with-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-delta-with-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-delta-with-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-delta-with-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response when using `@odata.deltaLink` obtained from the query initialization. Note that both properties are included in the response and it is not known which ones have changed since the `@odata.deltaLink` was obtained.

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
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "@odata.type": "#microsoft.graph.user",
      "surname": "Vance",
      "id": "87d349ed-44d7-43e1-9a83-5f2406dee5bd"
    },
    {
      "@odata.type": "#microsoft.graph.group",
      "displayName":"All Company",
      "id": "72052a9a-c466-4995-8210-95a1c1221995",
    }
  ]
}
```

### Example 4: Retrieve specific properties only if they changed for a collection of users and groups

#### Request

The following example shows the initial request selecting one property each from a user and group for change tracking, with alternative minimal response behavior:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "directoryObject_delta_minimal"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/directoryObjects/delta?$filter=isof('microsoft.graph.user') or isof('microsoft.graph.group')&$select=microsoft.graph.user/surname,microsoft.graph.group/displayName
Prefer: return=minimal
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/directoryobject-delta-minimal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/directoryobject-delta-minimal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/directoryobject-delta-minimal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/directoryobject-delta-minimal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/directoryobject-delta-minimal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response when using `@odata.deltaLink` obtained from the query initialization. Note that the `microsoft.graph.user/surname` property is not included, which means it has not changed since the last delta query; `microsoft.graph.group/displayName` is included which means its value has changed.

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
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "@odata.nextLink":"https://graph.microsoft.com/beta/directoryObjects/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "@odata.type": "#microsoft.graph.group",
      "displayName":"Everyone",
      "id": "72052a9a-c466-4995-8210-95a1c1221995",
    }
  ]
}
```

## See also

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).
- [Get incremental changes for groups](/graph/delta-query-groups).
- [Get incremental changes for users](/graph/delta-query-users).
