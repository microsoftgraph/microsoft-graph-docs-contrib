---
title: "Paging Microsoft Graph data in your app "
description: "Use data in the odata.nextLink property in the response to retrieve the next page of results. "
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
---

# Paging Microsoft Graph data in your app 

Some GET queries against Microsoft Graph return multiple pages of data either due to server-side paging or due to the use of the `$top` query parameter to specifically limit the page size in a request. When more than one query request is required to retrieve all the results, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results.

For example, the following URL requests all the users in an organization with a page size of 5, specified with the `$top` query parameter:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "paging-top"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$top=5
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/paging-top-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/paging-top-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/paging-top-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/paging-top-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/paging-top-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/paging-top-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/paging-top-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/paging-top-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

If the result contains more results, Microsoft Graph returns an `@odata.nextLink` property similar to the following along with the first page of results:

```json
"@odata.nextLink": "https://graph.microsoft.com/v1.0/users?$top=5&$skiptoken=RFNwdAIAAQAAAD8...AAAAAAAA"
```

You can retrieve the next page of results by sending the URL value of the `@odata.nextLink` property to Microsoft Graph.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "paging-top-plus-skiptoken"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users?$top=5&$skiptoken=skiptoken=RFNwdAIAAQAAAD8...AAAAAAAA
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/paging-top-plus-skiptoken-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/paging-top-plus-skiptoken-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/paging-top-plus-skiptoken-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/paging-top-plus-skiptoken-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/paging-top-plus-skiptoken-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/paging-top-plus-skiptoken-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/paging-top-plus-skiptoken-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/paging-top-plus-skiptoken-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

Microsoft Graph will continue to return a reference to the next page of results in the `@odata.nextLink` property with each response until all pages of the results have been read. To read all results, you must continue to call Microsoft Graph with the `@odata.nextLink` property returned in each response until the `@odata.nextLink` property is no longer returned.

>**Important:** You should include the entire URL in the `@odata.nextLink` property in your request for the next page of results. Depending on the API that the query is being performed against, the `@odata.nextLink` URL value will contain either a `$skiptoken` or a `$skip` query parameter. The URL also contains all the other query parameters present in the original request. Do not try to extract the `$skiptoken` or `$skip` value and use it in a different request. 

Paging behavior varies across different Microsoft Graph APIs. Consider the following when working with paged data:

- A page of results may contain zero or more results.
- Different APIs might have different default and maximum page sizes.
- Different APIs might behave differently if you specify a page size (via the `$top` query parameter) that exceeds the maximum page size for that API. Depending on the API, the requested page size might be ignored, it might default to the maximum page size for that API, or Microsoft Graph might return an error. 
- Not all resources or relationships support paging. For example, queries against [directoryRoles](/graph/api/resources/directoryrole) do not support paging. This includes reading role objects themselves as well as role members.
- When paging against directory resources, any additional request headers such as the **ConsistencyLevel** header are not included by default in subsequent page requests. If those headers need to be sent on subsequent requests, you must set them explicitly.
- When using the `$count=true` query string when querying against directory resources, the `@odata.count` property will be present only in the first page of the paged data.

## Learn more about paging
The following video introduces you to paging in Microsoft Graph.

> [!VIDEO https://www.youtube-nocookie.com/embed/DB_NoC9a1JI]
