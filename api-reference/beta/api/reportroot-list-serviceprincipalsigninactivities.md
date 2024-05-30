---
title: "List servicePrincipalSignInActivities"
doc_type: apiPageType
description: "Get a list of servicePrincipalSignInActivity objects that contains sign-in activity information for service principals in a Microsoft Entra tenant."
ms.localizationpriority: medium
author: "madansr7"
ms.subservice: "entra-sign-in"
---


# List servicePrincipalSignInActivities

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) objects that contains sign-in activity information for service principals in a Microsoft Entra tenant. You can use a service principal as a client or resource. A service principal supports delegated or app-only authentication context.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_list_serviceprincipalsigninactivities" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-list-serviceprincipalsigninactivities-permissions.md)]


## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /reports/servicePrincipalSignInActivities
```

## Optional query parameters

This method supports the `$top`, `$filter`, and `$orderby` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers

| Name          | Description    |
| :------------ | :------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [servicePrincipalSignInActivity](../resources/serviceprincipalsigninactivity.md) objects in the response body.

## Examples

### Example 1: Get a list of servicePrincipalSignInActivity objects

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_servicePrincipalSignInActivities"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/servicePrincipalSignInActivities
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-serviceprincipalsigninactivities-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-serviceprincipalsigninactivities-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-serviceprincipalsigninactivities-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-serviceprincipalsigninactivities-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-serviceprincipalsigninactivities-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-serviceprincipalsigninactivities-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-serviceprincipalsigninactivities-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-serviceprincipalsigninactivities-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.servicePrincipalSignInActivity)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#reports/servicePrincipalSignInActivities",
  "value": [
    {
      "appId": "83f45296-fb8f-4aaa-a399-ac51084e02b7",
      "applicationAuthenticationClientSignInActivity": {
        "lastSignInDateTime": "2021-03-01T00:00:00-8:00",
        "lastSignInRequestId": "4ea8ac36-d43d-431c-bb05-739348e18c66"
      },
      "applicationAuthenticationResourceSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
        "lastSignInRequestId": "0f251de7-e611-41fb-bed0-6eb650757e72"
      },
      "delegatedClientSignInActivity": {
        "lastSignInDateTime": "2021-01-01T00:00:00-8:00",
        "lastSignInRequestId": "e58c9022-c965-4ec0-960b-9c197e549f27"
      },
      "delegatedResourceSignInActivity": {
        "lastSignInDateTime": "2021-02-01T00:00:00-8:00",
        "lastSignInRequestId": "25570a7f-a031-4f20-959e-02fb7cd46a1c"
      },
      "id": "ODNmNDUyOTYtZmI4Zi00YWFhLWEzOTktYWM1MTA4NGUwMmI3",
      "lastSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00Z",
        "lastSignInRequestId": "0f251de7-e611-41fb-bed0-6eb650757e72"
      }
    },
    {
      "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
      "applicationAuthenticationClientSignInActivity": {
        "lastSignInDateTime": "2021-03-01T00:00:00-8:00",
        "lastSignInRequestId": "0e0cb2c3-85b9-4bdc-8a89-3bd08a5d8548"
      },
      "applicationAuthenticationResourceSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
        "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
      },
      "delegatedClientSignInActivity": {
        "lastSignInDateTime": "2021-01-01T00:00:00-8:00",
        "lastSignInRequestId": "7e24e4a9-ee1e-45d9-97ff-b4fb0c854b16"
      },
      "delegatedResourceSignInActivity": {
        "lastSignInDateTime": "2021-02-01T00:00:00-8:00",
        "lastSignInRequestId": "3e767241-2173-41f5-a42d-1302549950b2"
      },
      "id": "ZjRkOTY1NGYtMDMwNS00MDcyLTg3OGMtOGJmMjY2ZGZlMTQ2",
      "lastSignInActivity": {
        "lastSignInDateTime": "2021-04-01T00:00:00Z",
        "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
      }
    }
  ]
}
```

### Example 2: Get a servicePrincipalSignInActivity filtered by appId

The following example shows how to get a **servicePrincipalSignInActivity** object filtered by **appId**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_servicePrincipalSignInActivities_filter_appid"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/servicePrincipalSignInActivities?$filter=appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-serviceprincipalsigninactivities-filter-appid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-serviceprincipalsigninactivities-filter-appid-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-serviceprincipalsigninactivities-filter-appid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-serviceprincipalsigninactivities-filter-appid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-serviceprincipalsigninactivities-filter-appid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-serviceprincipalsigninactivities-filter-appid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-serviceprincipalsigninactivities-filter-appid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-serviceprincipalsigninactivities-filter-appid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipalSignInActivity"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
     "@odata.context":"https://graph.microsoft.com/beta/$metadata#reports/servicePrincipalSignInActivities",
     "appId": "f4d9654f-0305-4072-878c-8bf266dfe146",
     "applicationAuthenticationClientSignInActivity": {
          "lastSignInDateTime": "2021-03-01T00:00:00-8:00",
          "lastSignInRequestId": "0e0cb2c3-85b9-4bdc-8a89-3bd08a5d8548"
     },
     "applicationAuthenticationResourceSignInActivity": {
          "lastSignInDateTime": "2021-04-01T00:00:00-8:00",
          "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
     },
     "delegatedClientSignInActivity": {
          "lastSignInDateTime": "2021-01-01T00:00:00-8:00",
          "lastSignInRequestId": "7e24e4a9-ee1e-45d9-97ff-b4fb0c854b16"
     },
     "delegatedResourceSignInActivity": {
          "lastSignInDateTime": "2021-02-01T00:00:00-8:00",
          "lastSignInRequestId": "3e767241-2173-41f5-a42d-1302549950b2"
     },
     "id": "ZjRkOTY1NGYtMDMwNS00MDcyLTg3OGMtOGJmMjY2ZGZlMTQ2",
     "lastSignInActivity": {
          "lastSignInDateTime": "2021-04-01T00:00:00Z",
          "lastSignInRequestId": "b26f6bf8-af96-4f2a-bef7-07913f634d6d"
     }
}
```
