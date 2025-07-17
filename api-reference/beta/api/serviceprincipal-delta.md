---
title: "servicePrincipal: delta"
description: "Get newly created, updated, or deleted service principals without having to perform a full read of the entire resource collection. See Using Delta Query for details."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "entra-applications"
author: "sureshja"
ms.date: 10/22/2024
---

# servicePrincipal: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created, updated, or deleted service principals without having to perform a full read of the entire resource collection. For more information, see [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview) for details.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "serviceprincipal_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-delta-permissions.md)]

[!INCLUDE [rbac-serviceprincipal-apis-read](../includes/rbac-for-apis/rbac-serviceprincipal-apis-read.md)]

## HTTP request

To begin tracking changes, you make a request by including the delta function on the servicePrincipal resource. 

<!-- { "blockType": "ignored" } -->
```http
GET /servicePrincipals/delta
```

### Query parameters

Tracking changes incurs a round of one or more **delta** function calls. If you use any query parameter 
(other than `$deltatoken` and `$skiptoken`), you must specify 
it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters 
into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response. 
You only need to specify any desired query parameters once upfront. 
In subsequent requests, copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response, as that URL already 
includes the encoded, desired parameters.

| Query parameter       | Type    |Description|
|:---------------|:--------|:----------|
| $deltatoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call for the same resource collection, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same resource collection. |

## Optional query parameters

This method supports OData Query Parameters to help customize the response.

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The 
_id_ property is always returned. 

- There is limited support for `$filter`:
  * The only supported `$filter` expression is for tracking changes for specific resources, by their id:  `$filter=id+eq+{value}` or `$filter=id+eq+{value1}+or+id+eq+{value2}`. The number of ids you can specify is limited by the maximum URL length.


## Request headers
| Name       | Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

### Response

If successful, this method returns a `200 OK` response code and [servicePrincipal](../resources/serviceprincipal.md) collection object in the response body. The response also includes a nextLink URL or a deltaLink URL. 

- If a `@odata.nextLink` URL is returned, there are additional pages of data to be retrieved in the session. The application continues making requests use the `@odata.nextLink` URL until a `@odata.deltaLink` URL is included in the response.

- If a `@odata.deltaLink` URL is returned, there's no more data about the existing state of the resource to be returned. Persist and use the `@odata.deltaLink` URL to learn about changes to the resource in the future.

See:</br>
- [Using Delta Query](/graph/delta-query-overview) for more details</br>
- [Get incremental changes for users](/graph/delta-query-users) for an example request.</br>

## Example
### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "servicePrincipal_delta"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/servicePrincipals/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-delta-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/serviceprincipal-delta-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/serviceprincipal-delta-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-delta-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-delta-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/serviceprincipal-delta-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/serviceprincipal-delta-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/serviceprincipal-delta-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>Note: The response object shown here might be shortened for readability.
<!-- { 
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal",
  "isCollection": true 
} --> 
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#servicePrincipals",
  "@odata.nextLink":"https://graph.microsoft.com/beta/servicePrincipals/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjsXoYQp_dpA3cNJWc",
  "value": [
     {
      "accountEnabled": true,
      "addIns": [
        {
          "id": "id-value",
          "type": "type-value",
          "properties": [
            {
              "key": "key-value",
              "value": "value-value"
            }
          ]
        }
      ],
      "appDisplayName": "appDisplayName-value",
      "appId": "appId-value",
      "appOwnerOrganizationId": "appOwnerOrganizationId-value",
      "appRoleAssignmentRequired": true
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "servicePrincipal: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



