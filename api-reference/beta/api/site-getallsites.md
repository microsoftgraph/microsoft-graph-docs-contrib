---
title: "sites: getAllSites"
description: "List all sites across geographies in an organization - OneDrive API"
author: tushar20
ms.author: tkanaujia
ms.date: 5/3/2023
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# sites: getAllSites

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List [sites](../resources/site.md) across geographies in an organization.

For more details, see [Best practices for discovering files and detecting changes at scale](/onedrive/developer/rest-api/concepts/scan-guidance?view=odsp-graph-online&preserve-view=true).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)
|:--------------------------------------|:-------------------------------------
|Delegated (work or school account)     | Not supported.
|Delegated (personal Microsoft account) | Not supported.
|Application                            | Sites.Read.All, Sites.ReadWrite.All

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/getAllSites
```

## Examples

### Example 1: Initial request

#### Request

<!-- { "blockType": "ignored", "name": "getAllSitesInitialRequest"} -->

```http
GET /sites/getAllSites
```

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
      "root": { },
      "siteCollection": {
        "hostName": "contoso-apc.sharepoint.com"
      },
      "webUrl": "https://contoso-apc.sharepoint.com/sites/siteA"
    },
    {
      "id": "contoso-apc.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022",
      "name": "Site B",
      "root": { },
      "siteCollection": {
        "hostName": "contoso-apc.sharepoint.com"
      },
      "webUrl": "https://contoso-apc.sharepoint.com/sites/siteB"
    }
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/sites/oneDrive.getAllSites?$skiptoken=U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ"
}
```

This response includes the first page of enumerated sites, and the @odata.nextLink property indicates that there are more items available in the current set of items. Your app should continue to request the URL value of @odata.nextLink until all pages of items have been retrieved.

### Example 2: Subsequent request

#### Request

<!-- { "blockType": "request", "name": "getAllSitesSubsequentRequest" } -->

```msgraph-interactive
GET /sites/getAllSites?$skiptoken=U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ
```

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
      "root": { },
      "siteCollection": {
        "hostName": "contoso-nam.sharepoint.com"
      },
      "webUrl": "https://contoso-nam.sharepoint.com/sites/siteA"
    },
    {
      "id": "contoso-nam.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022",
      "name": "Site B",
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