---
title: "List applications"
description: "Get the list of applications in this organization."
author: "Jackson-Woods"
ms.localizationpriority: high
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 05/16/2025
---

# List applications

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [applications](../resources/application.md) in this organization. This API also returns [agentIdentityBlueprint](../resources/agentidentityblueprint.md) objects, which are identified by the **@odata.type** property of `#microsoft.graph.agentIdentityBlueprint`.

> [!NOTE]
> When calling this API using tokens issued for a personal Microsoft account, it will return the apps owned by the personal Microsoft account. The notion of organizations doesn't exist for personal Microsoft accounts. To list applications owned by a specific personal Microsoft account, this API requires the *User.Read* permission in addition to *Application.Read.All* or *Application.ReadWrite.All*.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/application-list-permissions.md)]

[!INCLUDE [rbac-application-apis-read](../includes/rbac-for-apis/rbac-application-apis-read.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /applications
```
## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$search`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response. Some relationships also support `$filter`. The default and maximum page sizes are 100 and 999 application objects respectively. Some queries are supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).


By default, this API doesn't return the value of the **key** thumbprint in the **keyCredentials** property when listing all applications. To retrieve the **key** thumbprint, the **keyCredentials** property must be specified in a `$select` query. For example, `$select=id,appId,keyCredentials`.

The use of `$select` to get **keyCredentials** for applications has a throttling limit of 150 requests per minute for every tenant.


## Request headers

| Name | Description |
|:---- |:----------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| ConsistencyLevel | eventual. This header and `$count` are required when using `$search`, or in specific usage of `$filter`. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [application](../resources/application.md) and [agentIdentityBlueprint](../resources/agentidentityblueprint.md) objects in the response body.

## Examples

### Example 1: Get the list of applications

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_application"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-application-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications",
  "value": [
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "identifierUris": [ "http://contoso/" ],
      "displayName": "My app",
      "publisherDomain": "contoso.com",
      "signInAudience": "AzureADMyOrg"
    }
  ]
}
```

### Example 2: Get only a count of applications

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).


>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_count_only_beta_e2"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications/$count
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-count-only-beta-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-count-only-beta-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-count-only-beta-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-count-only-beta-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-count-only-beta-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-count-only-beta-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-count-only-beta-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "String"
} -->
```http
HTTP/1.1 200 OK
Content-type: text/plain

893
```


### Example 3: Use $filter and $top to get one application with a display name that starts with 'a' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` and the `$count=true` query string because the request has both the `$orderby` and `$filter` query parameters. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_applications_startswith"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications?$filter=startswith(displayName, 'a')&$count=true&$top=1&$orderby=displayName
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-applications-startswith-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-applications-startswith-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-applications-startswith-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-applications-startswith-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-applications-startswith-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-applications-startswith-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-applications-startswith-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#applications",
  "@odata.count":1,
  "value":[
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "identifierUris": [ "http://contoso/" ],
      "displayName":"a",
      "publisherDomain": "contoso.com",
      "signInAudience": "AzureADMyOrg"
    }
  ]
}
```

### Example 4: Use $search to get applications with display names that contain the letters 'Web' including a count of returned objects

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$search` and the `$count=true` query string is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_applications_search_count_select"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications?$search="displayName:Web"&$count=true&$select=appId,identifierUris,displayName,publisherDomain,signInAudience
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-applications-search-count-select-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-applications-search-count-select-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-applications-search-count-select-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-applications-search-count-select-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-applications-search-count-select-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-applications-search-count-select-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-applications-search-count-select-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications(appId,identifierUris,displayName,publisherDomain,signInAudience)",
  "@odata.count":1396,
  "value":[
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "identifierUris": [ "http://contoso/" ],
      "displayName":"'DotNetWeb-App' ",
      "publisherDomain": "contoso.com",
      "signInAudience": "AzureADMyOrg"
    }
  ]
}
```

### Example 5: Get applications with less than two owners

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

>**Note:** The `$count` and `$search` query parameters are currently not available in Azure AD B2C tenants.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_application_lessthan2owners"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications?$filter=owners/$count eq 0 or owners/$count eq 1&$count=true&$select=id,displayName
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-application-lessthan2owners-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-application-lessthan2owners-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-application-lessthan2owners-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-application-lessthan2owners-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-application-lessthan2owners-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-application-lessthan2owners-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-application-lessthan2owners-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications(id,displayName)",
    "@odata.count": 3,
    "value": [
        {
            "id": "89e9e6c6-a7de-4ac0-8eed-12bd867d8f27",
            "displayName": "Box"
        },
        {
            "id": "c6cb7240-c684-4e24-93f5-eb29d0d9f43b",
            "displayName": "LinkedIn"
        },
        {
            "id": "d7151835-284e-4416-adc6-96fef8a77690",
            "displayName": "BrowserStack"
        }
    ]
}
```

### Example 6: Get the applications with identifierUris using the API scheme

#### Request

The following example shows a request. This request requires the **ConsistencyLevel** header set to `eventual` because `$count` is in the request. For more information about the use of **ConsistencyLevel** and `$count`, see [Advanced query capabilities on directory objects](/graph/aad-advanced-queries).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_application_filteridentifieruris"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications?$filter=identifierUris/any(x:startswith(x,'api://'))&$count=true
ConsistencyLevel: eventual
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-application-filteridentifieruris-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-application-filteridentifieruris-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-application-filteridentifieruris-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-application-filteridentifieruris-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-application-filteridentifieruris-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-application-filteridentifieruris-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-application-filteridentifieruris-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications",
    "@odata.count": 15067,
    "@odata.nextLink": "https://graph.microsoft.com/beta/applications?$filter=identifierUris%2fany(x%3astartswith(x%2c%27api%3a%2f%2f%27))&$count=true&$skiptoken=m~AQAoOzAxOTk3MTE1OTYyMDQ4MGE4YzE0ZjlkNWM0Y2ViMjE5OzswOzA7Ow",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET applications?$select=api,appCategory",
    "value": [
        {
            "id": "000101ef-c7d0-47a0-83bd-d234347da0f3",
            "identifierUris": [
                "api://000101ef-c7d0-47a0-83bd-d234347da0f3"
            ]
        }
    ]
}
```
### Example 7: List applications with signInAudienceRestrictions

#### Request

The following example shows a request that uses `$select` to specify the properties that should be returned. This includes the **signInAudienceRestrictions** property which is *only* returned if requested with `$select`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_application_selectsigninaudiencerestrictions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/applications?$select=id,appId,displayName,signInAudience,signInAudienceRestrictions
```

---

#### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications(id,appId,displayName,signInAudience,signInAudienceRestrictions)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/applications?$select=id%2cappId%2cdisplayName%2csignInAudience%2csignInAudienceRestrictions&$skiptoken=RFNwdAIAAQ...",
    "value": [
        {
            "id": "5ea443cf-12f6-41ab-9d8a-5ce727149aa5",
            "appId": "422cc61e-7b6b-4a85-86ab-fb30889ab0ce",
            "displayName": "Test app 1",
            "signInAudience": "AzureADandPersonalMicrosoftAccount",
            "signInAudienceRestrictions": {
                "@odata.type": "#microsoft.graph.unrestrictedAudience",
                "kind": "unrestricted"
            }
        },
        {
            "id": "84ac0248-da58-40c5-b98f-984f85899017",
            "appId": "2fc17695-80db-4ac5-96dd-6aa82d8dfcdc",
            "displayName": "New app with org restrictions",
            "signInAudience": "AzureADMultipleOrgs",
            "signInAudienceRestrictions": {
                "@odata.type": "#microsoft.graph.allowedTenantsAudience",
                "kind": "allowedTenants",
                "allowedTenantIds": [
                    "3be81b2e-2cfa-49f8-9fe1-c7c7223b9658",
                    "7c33a22a-27ff-4948-840f-7beb8169d6e4"
                ],
                "isHomeTenantAllowed": true
            }
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List applications",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



