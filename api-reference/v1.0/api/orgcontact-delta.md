---
title: "orgContact: delta"
description: "Get newly created, updated, or deleted organizational contacts without having to perform a full read of the entire collection."
ms.localizationpriority: medium
author: "dkershaw10"
ms.subservice: "entra-directory-management"
doc_type: apiPageType
ms.date: 10/22/2024
---

# orgContact: delta

Namespace: microsoft.graph

Get newly created, updated, or deleted organizational contacts without having to perform a full read of the entire collection. For more information, see [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview) for details.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "orgcontact_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/orgcontact-delta-permissions.md)]

[!INCLUDE [rbac-org-contacts-apis-read-all](../includes/rbac-for-apis/rbac-org-contacts-apis-read-all.md)]

## HTTP request

To begin tracking changes, you make a request including the delta function on the contacts resource.

<!-- { "blockType": "ignored" } -->
```http
GET /contacts/delta
```

## Query parameters

Tracking changes in organizational contacts incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response.

You only need to specify any query parameters once up front.

In subsequent requests, copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response. That URL already includes the encoded parameters.

| Query parameter       | Type    |Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same organization contact collection, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL, including this token, in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating that there are further changes to be tracked in the same organization contact collection. |

### OData query parameters

This method supports optional OData query parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The **id** property is always returned.
- There's limited support for `$filter`:
  - The only supported `$filter` expression is for tracking changes on a specific object: `$filter=id+eq+{value}`. You can filter multiple objects. For example, `https://graph.microsoft.com/v1.0/contacts/delta/?$filter= id eq '477e9fc6-5de7-4406-bb2a-7e5c83c9ffff' or id eq '004d6a07-fe70-4b92-add5-e6e37b8affff'`. There's a limit of 50 filtered objects.

## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Prefer | return=minimal <br><br>Specifying this header with a request that uses a `@odata.deltaLink` would return only the object properties that have changed since the last round. Optional. |

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [orgContact](../resources/orgcontact.md) collection object in the response body. The response also includes a `@odata.nextLink` URL or a `@odata.deltaLink` URL.

- If a `@odata.nextLink` URL is returned:
  - This indicates that there are additional pages of data to be retrieved in the session. The application continues making requests using the `@odata.nextLink` URL until a `@odata.deltaLink` URL is included in the response.
  - The response includes the same set of properties as in the initial delta query request. This allows you to capture the full current state of the objects when initiating the delta cycle.

- If a `@odata.deltaLink` URL is returned:
  - This indicates that there's no more data about the existing state of the resource to be returned. Save and use the `@odata.deltaLink` URL to learn about changes to the resource in the next round.
  - You have a choice to specify the `Prefer:return=minimal` header, to include in the response values for only the properties that have changed since the time the `@odata.deltaLink` was issued.

### Default: return the same properties as initial delta request

By default, requests using a `@odata.deltaLink` or `@odata.nextLink` return the same properties as selected in the initial delta query in the following ways:

- If the property has changed, the new value is included in the response. This includes properties being set to null value.
- If the property hasn't changed, the old value is included in the response.
- If the property has never been set before, it will not be included in the response at all.


> **Note:** With this behavior, it is not possible to tell whether a property is changing by looking at the response. Also, the delta responses tend to be large because they contain all property values,as shown in [Example 2](#example-2-selecting-three-properties).

### Alternative: return only the changed properties

Adding an optional request header - `prefer:return=minimal` - results in the following behavior:

- If the property has changed, the new value is included in the response. This includes properties being set to null value.
- If the property hasn't changed, the property isn't included in the response at all. (Different from the default behavior.)

> **Note:** The header can be added to a `@odata.deltaLink` request at any point in time in the delta cycle. The header only affects the set of properties included in the response and it does not affect how the delta query is run. See [Example 3](#example-3-alternative-minimal-response-behavior).

## Examples

### Example 1: Default properties

#### Request

Here's an example  of the request. There's no `$select` parameter, so a default set of properties is tracked and returned.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgContact_delta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/contacts/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/orgcontact-delta-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/orgcontact-delta-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/orgcontact-delta-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/orgcontact-delta-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/orgcontact-delta-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here's an example  of the response when using `@odata.deltaLink` obtained from the query initialization.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.orgcontact",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#contacts",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/contacts/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "companyName": "companyName-value",
      "department": "department-value",
      "displayName": "displayName-value",
      "givenName": "givenName-value",
      "id": "string (identifier)",
      "jobTitle": "jobTitle-value",
      "mail": "mail-value",
      "mailNickname": "mailNickname-value",
      "surname": "surname-value"
    }
  ]
}
```

### Example 2: Selecting three properties

#### Request

The next example shows the initial request selecting three properties for change tracking, with default response behavior.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgcontact_delta_select"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/contacts/delta?$select=displayName,jobTitle,mail
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-delta-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/orgcontact-delta-select-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/orgcontact-delta-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-delta-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-delta-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/orgcontact-delta-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/orgcontact-delta-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/orgcontact-delta-select-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here's an example  of the response when using `@odata.deltaLink` obtained from the query initialization. All three properties are included in the response and it isn't known which ones have changed since the `@odata.deltaLink` was obtained.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.orgcontact",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#contacts",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/contacts/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "displayName": "displayName-value",
      "jobTitle": "jobTitle-value",
      "mail": null
    }
  ]
}
```

### Example 3: Alternative minimal response behavior

#### Request

The next example shows the initial request selecting three properties for change tracking, with alternative minimal response behavior.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "orgcontact_delta_minimal"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/contacts/delta?$select=displayName,jobTitle,mail
Prefer: return=minimal
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/orgcontact-delta-minimal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/orgcontact-delta-minimal-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/orgcontact-delta-minimal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/orgcontact-delta-minimal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/orgcontact-delta-minimal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/orgcontact-delta-minimal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/orgcontact-delta-minimal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/orgcontact-delta-minimal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

Here's an example  of the response when using `@odata.deltaLink` obtained from the query initialization. The `mail` property isn't included, which means it hasn't changed since the last delta query; `displayName` and `jobTitle` are included which means their values have changed.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.orgcontact",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/v1.0/$metadata#contacts",
  "@odata.nextLink":"https://graph.microsoft.com/v1.0/contacts/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
    {
      "displayName": "displayName-value",
      "jobTitle": null
    }
  ]
}
```
## Related content

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview).

<!-- uuid: 3B5A9A7C-6324-432F-8C66-AC4883DD71EF
2020-03-20 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "contact: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

