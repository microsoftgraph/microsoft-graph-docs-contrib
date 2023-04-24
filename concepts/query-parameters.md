---
title: "Use query parameters to customize responses"
description: "Microsoft Graph provides optional query parameters that you can use to specify and control the amount of data returned in a response. Includes common parameters."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: Luca.Spolidoro
ms.prod: "applications"
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
ms.date: 12/08/2022
---

# Use query parameters to customize responses

Microsoft Graph supports optional query parameters that you can use to specify and control the amount of data returned in a response. The support for the exact query parameters varies from one API operation to another, and depending on the API, can differ between the v1.0 and beta endpoints.

> [!TIP] 
> On the beta endpoint, the `$` prefix is optional. For example, instead of `$filter`, you can use `filter`. 
> On the v1 endpoint, the `$` prefix is optional for only a subset of APIs. For simplicity, always include `$` if using the v1 endpoint.

Query parameters can be [OData system query options](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html#_Toc31360955) or other query parameters.

> [!VIDEO https://www.youtube-nocookie.com/embed/7BuFv3yETi4]

## OData system query options
A Microsoft Graph API operation might support one or more of the following OData system query options. These query options are compatible with the [OData V4 query language][odata-query] and are supported in only GET operations.

Click the examples to try them in [Graph Explorer][graph-explorer].

| Name                     | Description | Example
|:-------------------------|:------------|:---------|
| [$count](#count-parameter)         | Retrieves the total count of matching resources. | [`/me/messages?$top=2&$count=true`][count-example]
| [$expand](#expand-parameter)       | Retrieves related resources.|[`/groups?$expand=members`][expand-example]
| [$filter](#filter-parameter)       | Filters results (rows).|[`/users?$filter=startswith(givenName,'J')`][filter-example]
| [$format](#format-parameter)       | Returns the results in the specified media format.|[`/users?$format=json`][format-example]
| [$orderby](#orderby-parameter)     | Orders results.|[`/users?$orderby=displayName desc`][orderby-example]
| [$search](#search-parameter)       | Returns results based on search criteria. |[`/me/messages?$search=pizza`][search-example]
| [$select](#select-parameter)       | Filters properties (columns).|[`/users?$select=givenName,surname`][select-example]
| [$skip](#skip-parameter)           | Indexes into a result set. Also used by some APIs to implement paging and can be used together with `$top` to manually page results. | [`/me/messages?$skip=11`][skip-example]
| [$top](#top-parameter)             | Sets the page size of results. |[`/users?$top=2`][top-example]

To know the OData system query options that an API and its properties support, see the **Properties** table in the resource page, and the **Optional query parameters** section of the LIST and GET operations for the API.

## Other query parameters

| Name                     | Description | Example
|:-------------------------|:------------|:---------|
| [$skipToken](#skiptoken-parameter) | Retrieves the next page of results from result sets that span multiple pages. (Some APIs use `$skip` instead.) | `/users?$skiptoken=X%274453707402000100000017...`|

## Other OData URL capabilities

The following OData 4.0 capabilities are URL segments, not query parameters.

| Name                     | Description | Example 
|:-------------------------|:------------|:---------|
| [$count](/graph/api/user-list#example-3-get-only-a-count-of-users)| Retrieves the integer total of the collection. | `GET /users/$count` <br> `GET /groups/{id}/members/$count`|
| [$ref](/graph/api/group-post-members) | Updates entities membership to a collection. | `POST /groups/{id}/members/$ref` |
| [$value](/graph/api/profilephoto-get) | Retrieves or updates the binary value of an item. | `GET /me/photo/$value` |
| [$batch](/graph/json-batching) | Combine multiple HTTP requests into a batch request. | `POST /$batch` |

## Encoding query parameters

The values of query parameters should be percent-encoded as per [RFC 3986](https://www.rfc-editor.org/rfc/rfc3986#section-2.2). For example, all reserved characters in query strings must be percent-encoded. Many HTTP clients, browsers, and tools (such as the [Graph Explorer][graph-explorer]) will help you with this. If a query is failing, one possible cause is failure to encode the query parameter values appropriately. In some cases, you may have to double-encode the values.

For example, an unencoded URL looks like this:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-unencoded-url-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName, 'J')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-unencoded-url-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-unencoded-url-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-unencoded-url-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-unencoded-url-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-unencoded-url-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-unencoded-url-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The properly percent-encoded URL looks like this:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-percent.encoded-url-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=startswith(givenName%2C+'J')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-percentencoded-url-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-percentencoded-url-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-percentencoded-url-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-percentencoded-url-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-percentencoded-url-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-percentencoded-url-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The double-encoded URL looks like this:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-double.percent.encoded-url-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$filter=startswith%28givenName%2C%20%27J%27%29
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-doublepercentencoded-url-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-doublepercentencoded-url-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-doublepercentencoded-url-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-doublepercentencoded-url-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-doublepercentencoded-url-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-doublepercentencoded-url-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Escaping single quotes

For requests that use single quotes, if any parameter values also contain single quotes, those must be double escaped; otherwise, the request will fail due to invalid syntax. In the example, the string value `let''s meet for lunch?` has the single quote escaped.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-escaped-quotes-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$filter=subject eq 'let''s meet for lunch?'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-escaped-quotes-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-escaped-quotes-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-escaped-quotes-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-escaped-quotes-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-escaped-quotes-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-escaped-quotes-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

## count parameter

Use the `$count` query parameter to retrieve the count of the total number of items in a collection or matching an expression. `$count` can be used in the following ways:

1. As a query string parameter with the syntax `$count=true` to include a count of the total number of items in a collection alongside the page of data values returned from Microsoft Graph. For example, `users?$count=true`.
2. As a [URL segment](#other-odata-url-capabilities) to retrieve only the integer total of the collection. For example, `users/$count`.
3. In a `$filter` expression with equality operators to retrieve a collection of data where the filtered property is an empty collection. See [Use the $filter query parameter to filter a collection of objects](/graph/filter-query-parameter).

> [!NOTE]
> 1. On resources that derive from [directoryObject](/graph/api/resources/directoryobject), `$count` is only supported in an advanced query. See [Advanced query capabilities in Azure AD directory objects](/graph/aad-advanced-queries).
> 2. Use of `$count` is not supported in Azure AD B2C tenants.

For example, the following request returns both the **contact** collection of the current user, and the number of items in the **contact** collection in the `@odata.count` property.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-count-example"
}-->
```msgraph-interactive
GET  https://graph.microsoft.com/v1.0/me/contacts?$count=true
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-count-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-count-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-count-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-count-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-count-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-count-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The `$count` query parameter is supported for collections of the following frequently used resources and their relationships that derive from [directoryObject](/graph/api/resources/directoryobject) and only in [advanced queries](/graph/aad-advanced-queries):
- [administrativeUnit](/graph/api/resources/administrativeunit)
- [application](/graph/api/resources/application)
- [orgContact](/graph/api/resources/orgcontact)
- [device](/graph/api/resources/device)
- [group](/graph/api/resources/group)
- [servicePrincipal](/graph/api/resources/serviceprincipal)
- [user](/graph/api/resources/user)

## expand parameter

Many Microsoft Graph resources expose both declared properties of the resource as well as its relationships with other resources. These relationships are also called reference properties or navigation properties, and they can reference either a single resource or a collection of resources. For example, the mail folders, manager, and direct reports of a user are all exposed as relationships. 

Normally, you can query either the properties of a resource or one of its relationships in a single request, but not both. You can use the `$expand` query string parameter to include the expanded resource or collection referenced by a single relationship (navigation property) in your results. Only one relationship can be expanded in a single request.

The following example gets root drive information along with the top-level child items in a drive:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-expand-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-expand-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-expand-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

With some resource collections, you can also specify the properties to be returned in the expanded resources by adding a `$select` parameter. The following example performs the same query as the previous example but uses a [`$select`](#select-parameter) statement to limit the properties returned for the expanded child items to the **id** and **name** properties.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-expand+nested.select-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/drive/root?$expand=children($select=id,name)
```

# [C#](#tab/csharp)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-expand+nestedselect-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-expand+nestedselect-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!NOTE]
> + Not all relationships and resources support the `$expand` query parameter. For example, you can expand the **directReports**, **manager**, and **memberOf** relationships on a user, but you cannot expand its **events**, **messages**, or **photo** relationships. Not all resources or relationships support using `$select` on expanded items. 
> 
> + With Azure AD resources that derive from [directoryObject](/graph/api/resources/directoryobject), like [user](/graph/api/resources/user) and [group](/graph/api/resources/group), `$expand` typically returns a maximum of 20 items for the expanded relationship and has no [@odata.nextLink](./paging.md). See more [known issues](known-issues.md#query-parameters).
>
> + `$expand` is not currently supported with [advanced queries](/graph/aad-advanced-queries).

## filter parameter

Use the `$filter` query parameter to retrieve just a subset of a collection. For guidance on using `$filter`, see [Use the $filter query parameter to filter a collection of objects](/graph/filter-query-parameter).

## format parameter

Use the `$format` query parameter to specify the media format of the items returned from Microsoft Graph.

For example, the following request returns the users in the organization in the json format:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-format-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$format=json
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-format-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-format-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-format-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-format-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-format-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-format-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!NOTE]
> The `$format` query parameter supports a number of formats (for example, atom, xml, and json) but results may not be returned in all formats.

## orderby parameter

Use the `$orderby` query parameter to specify the sort order of the items returned from Microsoft Graph. The default order is ascending order.

For example, the following request returns the users in the organization ordered by their display name:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-orderby-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$orderby=displayName
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-orderby-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-orderby-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-orderby-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-orderby-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-orderby-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-orderby-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

You can also sort by complex type entities. The following request gets messages and sorts them by the **address** field of the **from** property, which is of the complex type **emailAddress**:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-default.orderby-collection-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$orderby=from/emailAddress/address
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-defaultorderby-collection-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-defaultorderby-collection-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-defaultorderby-collection-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-defaultorderby-collection-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-defaultorderby-collection-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-defaultorderby-collection-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

To sort the results in ascending or descending order, append either `asc` or `desc` to the field name, separated by a space; for example, `?$orderby=name%20desc`. If the sort order is not specified, the default (ascending order) is inferred.

With some APIs, you can order results on multiple properties. For example, the following request orders the messages in the user's Inbox, first by the name of the person who sent it in descending order (Z to A), and then by subject in ascending order (default).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-desc.orderby-collection-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages?$orderby=from/emailAddress/name desc,subject
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-descorderby-collection-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-descorderby-collection-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-descorderby-collection-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-descorderby-collection-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-descorderby-collection-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-descorderby-collection-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!NOTE]
> When you specify `$filter` the server will infer a sort order for the results. If you use both `$orderby` and `$filter` to get messages, because the server always infers a sort order for the results of a `$filter`, you must [specify properties in certain ways](/graph/api/user-list-messages#using-filter-and-orderby-in-the-same-query).


The following example shows a query filtered by the **subject** and **importance** properties, and then sorted by the **subject**, **importance**, and **receivedDateTime** properties in descending order.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-filter+orderby-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$filter=Subject eq 'welcome' and importance eq 'normal'&$orderby=subject,importance,receivedDateTime desc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-filter+orderby-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-filter+orderby-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-filter+orderby-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-filter+orderby-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-filter+orderby-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-filter+orderby-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!NOTE] 
> Combining `$orderby` and `$filter` query parameters is supported for directory objects. See [Advanced query capabilities in Azure AD directory objects](/graph/aad-advanced-queries).

## search parameter

Use the `$search` query parameter to restrict the results of a request to match a search criterion. It's syntax and behavior varies from one API operation to another. To see the syntax for `$search` across different resources, see [Use the $search query parameter to match a search criterion](/graph/search-query-parameter).

## select parameter

Use the `$select` query parameter to return a set of properties that are different than the default set for an individual resource or a collection of resources. With `$select`, you can specify a subset or a superset of the default properties.

For example, when retrieving the messages of the signed-in user, you can specify that only the **from** and **subject** properties be returned:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-select-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$select=from,subject
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-select-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-select-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-select-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-select-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-select-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-select-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!IMPORTANT]
> In general, we recommend that you use `$select` to limit the properties returned by a query to those needed by your app. This is especially true of queries that might potentially return a large result set. Limiting the properties returned in each row will reduce network load and help improve your app's performance.
>
> In `v1.0`, some Azure AD resources that derive from [directoryObject](/graph/api/resources/directoryobject), like [user](/graph/api/resources/user) and [group](/graph/api/resources/group), return a limited, default subset of properties on reads. For these resources, you must use `$select` to return properties outside of the default set.  

## skip parameter

Use the `$skip` query parameter to set the number of items to skip at the start of a collection.
For example, the following request returns events for the user sorted by date created, starting with the 21st event in the collection:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-skip-example"
}-->
```msgraph-interactive
GET  https://graph.microsoft.com/v1.0/me/events?$orderby=createdDateTime&$skip=20
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-skip-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-skip-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-skip-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-skip-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-skip-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-skip-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

Some Microsoft Graph APIs, like Outlook Mail and Calendars (**message**, **event**, and **calendar**), use `$skip` to implement paging. When results of a query span multiple pages, these APIs will return an `@odata:nextLink` property with a URL that contains a `$skip` parameter. You can use this URL to return the next page of results. To learn more, see [Paging](./paging.md).

[Directory objects](/graph/api/resources/directoryobject) such as **user**, **group**, and **application** don't support `$skip`.

## skipToken parameter

Some requests return multiple pages of data, either due to server-side paging or due to the use of the [`$top`](#top-parameter) parameter to limit the page size of the response. Many Microsoft Graph APIs use the `skipToken` query parameter to reference subsequent pages of the result.  
The `$skiptoken` parameter contains an opaque token that references the next page of results and is returned in the URL provided in the `@odata.nextLink` property in the response. To learn more, see [Paging](./paging.md).

> [!NOTE]
> If you're using OData Count (adding `$count=true` in the query string) for queries against directory objects, the `@odata.count` property is present only in the first page.
>
> The **ConsistencyLevel** header required for advanced queries against directory objects is not included by default in subsequent page requests. It must be set explicitly in subsequent pages.

## top parameter

Use the `$top` query parameter to specify the number of items to be included in the result.

If more items remain in the result set, the response body will contain an `@odata.nextLink` parameter. This parameter contains a URL that you can use to get the next page of results. To learn more, see [Paging](./paging.md). 

The minimum value of $top is 1 and the maximum depends on the corresponding API.  

For example, the following [list messages](/graph/api/user-list-messages) request returns the first five messages in the user's mailbox:


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "query-parameters-top-example"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/messages?$top=5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/query-parameters-top-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/query-parameters-top-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/query-parameters-top-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/query-parameters-top-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/query-parameters-top-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/query-parameters-top-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

> [!NOTE]
> The **ConsistencyLevel** header required for advanced queries against directory objects is not included by default in subsequent page requests. It must be set explicitly in subsequent pages.

## Error handling for query parameters

Some requests will return an error message if a specified query parameter is not supported. For example, you cannot use `$expand` on the `user/photo` relationship.

```http
https://graph.microsoft.com/v1.0/me?$expand=photo
```

```json
{
    "error":{
        "code":"ExpandNotSupported",
        "message":"Expand is not allowed for property 'Photo' according to the entity schema.",
        "innerError":{
            "request-id":"1653fefd-bc31-484b-bb10-8dc33cb853ec",
            "date":"2017-07-31T20:55:01"
        }
    }
}
```

However, it is important to note that query parameters specified in a request might fail silently. This can be true for unsupported query parameters as well as for unsupported combinations of query parameters. In these cases, you should examine the data returned by the request to determine whether the query parameters you specified had the desired effect.

[graph-explorer]: https://developer.microsoft.com/graph/graph-explorer
[odata-filter]: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752358
[odata-query]: https://docs.oasis-open.org/odata/odata/v4.0/errata03/os/complete/part2-url-conventions/odata-v4.0-errata03-os-part2-url-conventions-complete.html#_Toc453752356

[count-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$top=2%26$count=true&method=GET&version=v1.0
[expand-example]: https://developer.microsoft.com/graph/graph-explorer?request=groups?$expand=members&method=GET&version=v1.0
[filter-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$filter=startswith(givenName,'J')&method=GET&version=v1.0
[format-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$format=json&method=GET&version=v1.0
[orderby-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$orderby=displayName%20DESC&method=GET&version=v1.0
[search-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$search=pizza&method=GET&version=v1.0
[select-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$select=givenName,surname&method=GET&version=v1.0
[skip-example]: https://developer.microsoft.com/graph/graph-explorer?request=me/messages?$skip=11&method=GET&version=v1.0
[top-example]: https://developer.microsoft.com/graph/graph-explorer?request=users?$top=2&method=GET&version=v1.0

## See also

- [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries)
- [Use the $search query parameter to match a search criterion](/graph/search-query-parameter)
- [Query parameter limitations](known-issues.md#query-parameters)
- [Training module: Optimize data usage when using Microsoft Graph with query parameters](/training/modules/optimize-data-usage)
