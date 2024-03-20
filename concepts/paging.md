---
title: "Paging Microsoft Graph data in your app "
description: "Learn how Microsoft Graph supports server-side and client-side paging to limit the number of results it returns."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.topic: concept-article
ms.date: 02/14/2024
ms.localizationpriority: high
ms.custom: graphiamtop20, scenarios:getting-started
#Customer intent: As a developer, I want to learn how to effeciently apply both server-side and client-side paging to my Microsoft Graph queries.
---

# Paging Microsoft Graph data in your app

Some GET queries against Microsoft Graph return multiple pages of data either due to server-side paging or client-side paging. Paging data helps improve the performance of your app and the response time of Microsoft Graph.

Learn more about pagination through the following video.

> [!VIDEO https://www.youtube-nocookie.com/embed/DB_NoC9a1JI]

## How paging works

In client-side paging, a client app specifies the number of results it wants Microsoft Graph to return in a single page by using the [$top](query-parameters.md#top-parameter), [$skip](query-parameters.md#skip-parameter), or [$skipToken](query-parameters.md#skiptoken-parameter) query parameters. Support for client-side paging, including the number of results that the client can request for in a single page depends on the API and the query being performed. For example, the `/users` endpoint supports `$top` but not `$skip`.

In server-side paging, the Microsoft Graph service returns a default number of results in a single page without the client specifying the number of results to return using `$top`. For example, the `GET /users` endpoint returns a default of 100 results in a single page.

When more than one query request is required to retrieve all the results, Microsoft Graph returns an `@odata.nextLink` property in the response that contains a URL to the next page of results. You can retrieve the next page of results by sending the URL value of the `@odata.nextLink` property to Microsoft Graph. Microsoft Graph will continue to return a reference to the next page of results in the `@odata.nextLink` property with each response until there are no more pages of results to retrieve. To read all results, you must continue to call Microsoft Graph with the `@odata.nextLink` property returned in each response until the `@odata.nextLink` property is no longer returned.

For example, the following example shows client-side paging where the client uses the `$top` query parameter to request up to five users in the tenant.

## [HTTP](#tab/http)
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

You should include the entire URL in the `@odata.nextLink` property in your request for the next page of results. Depending on the API that the query is being performed against, the `@odata.nextLink` URL value contains either a `$skiptoken` or a `$skip` query parameter. The URL also contains all the other query parameters present in the original request. Don't try to extract the `$skiptoken` or `$skip` value and use it in a different request.

Paging behavior varies across different Microsoft Graph APIs. Consider the following when working with paged data:

- A page of results may contain zero or more results.
- Different APIs might have different default and maximum page sizes.
- Different APIs might behave differently if you specify a page size (via the `$top` query parameter) that exceeds the maximum page size for that API. Depending on the API, the requested page size might be ignored, it might default to the maximum page size for that API, or Microsoft Graph might return an error.
- Not all resources or relationships support paging. For example, queries against [directoryRole](/graph/api/resources/directoryrole) don't support paging. This includes reading role objects themselves and role members.
- When paging against [directory resources](/graph/api/resources/directoryObject), any custom request headers (headers that aren't Authorization or Content-Type headers) such as the **ConsistencyLevel** header aren't included by default in subsequent page requests. If those headers need to be sent on subsequent requests, you must set them explicitly.
- When using the `$count=true` query string when querying against [directory resources](/graph/api/resources/directoryObject), the `@odata.count` property is returned only in the first page of the paged result set.

## Related content

- Microsoft Graph SDKs provide classes and methods to help with paging. For details, see [Page through a collection using the Microsoft Graph SDKs](sdks/paging.md).
