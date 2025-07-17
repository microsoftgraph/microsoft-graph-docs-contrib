---
title: "sites: getAllSites"
description: "List all sites across geographies in an organization - OneDrive API."
author: tushar20
ms.author: tkanaujia
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.date: 03/15/2024
---

# sites: getAllSites

List [sites](../resources/site.md) across geographies in an organization. This API can also be used to enumerate all sites in a non-multi-geo tenant.

For more information, see [Best practices for discovering files and detecting changes at scale](/onedrive/developer/rest-api/concepts/scan-guidance?view=odsp-graph-online&preserve-view=true).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "site_getallsites" } -->
[!INCLUDE [permissions-table](../includes/permissions/site-getallsites-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/getAllSites
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Examples

### Example 1: Initial request

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "site_getallsites1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/sites/getAllSites
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/site-getallsites1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/site-getallsites1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/site-getallsites1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/site-getallsites1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/site-getallsites1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/site-getallsites1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/site-getallsites1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/site-getallsites1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.site", "isCollection": true, "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "contoso-apc.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c",
      "name": "Root Site",
      "isPersonalSite": false,
      "root": { },
      "siteCollection": {
        "hostName": "contoso-apc.sharepoint.com",
        "dataLocationCode": "APC",
        "root": { }
      },
      "webUrl": "https://contoso-apc.sharepoint.com"
    },
    {
      "id": "contoso-apc.sharepoint.com,d9ecf079-9b13-4376-ac5d-f242dda55626,746dbcc1-fa2b-4120-b657-2670bae5bb6f",
      "name": "Site A",
      "isPersonalSite": false,
      "root": { },
      "siteCollection": {
        "hostName": "contoso-apc.sharepoint.com"
      },
      "webUrl": "https://contoso-apc.sharepoint.com/sites/siteA"
    },
    {
      "id": "contoso-apc.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022",
      "name": "Site B",
      "isPersonalSite": false,
      "root": { },
      "siteCollection": {
        "hostName": "contoso-apc.sharepoint.com"
      },
      "webUrl": "https://contoso-apc.sharepoint.com/sites/siteB"
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/sites/oneDrive.getAllSites?$skiptoken=U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ"
}
```

This response includes the first page of enumerated sites, and the @odata.nextLink property indicates that there are more items available in the current set of items. Your app should continue to request the URL value of @odata.nextLink until all pages of items are retrieved.

### Example 2: Subsequent request

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "site_getallsites2"
}
-->

```msgraph-interactive
GET /sites/getAllSites?$skiptoken=U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/site-getallsites2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/site-getallsites2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/site-getallsites2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/site-getallsites2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/site-getallsites2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/site-getallsites2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/site-getallsites2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/site-getallsites2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.site", "isCollection": true, "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "contoso-nam.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c",
      "name": "Root Site",
      "isPersonalSite": false,
      "root": { },
      "siteCollection": {
        "hostName": "contoso-nam.sharepoint.com",
        "dataLocationCode": "NAM",
        "root": { }
      },
      "webUrl": "https://contoso-nam.sharepoint.com"
    },
    {
      "id": "contoso-nam.sharepoint.com,d9ecf079-9b13-4376-ac5d-f242dda55626,746dbcc1-fa2b-4120-b657-2670bae5bb6f",
      "name": "Site A",
      "isPersonalSite": false,
      "root": { },
      "siteCollection": {
        "hostName": "contoso-nam.sharepoint.com"
      },
      "webUrl": "https://contoso-nam.sharepoint.com/sites/siteA"
    },
    {
      "id": "contoso-nam.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022",
      "name": "Site B",
      "isPersonalSite": false,
      "root": { },
      "siteCollection": {
        "hostName": "contoso-nam.sharepoint.com"
      },
      "webUrl": "https://contoso-nam.sharepoint.com/sites/siteB"
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/sites/oneDrive.getAllSites?$skiptoken=U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ"
}
```
