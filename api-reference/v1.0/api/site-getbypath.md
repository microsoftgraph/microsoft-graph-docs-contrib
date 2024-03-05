---
author: spgraph-docs-team
title: Get SharePoint site by path
ms.localizationpriority: medium
ms.prod: "sharepoint"
description: "Retrieve properties and relationships for a site resource."
doc_type: apiPageType
---
# Get a site resource by path

Namespace: microsoft.graph

Retrieve properties and relationships for a [site][] resource.
A **site** resource represents a team site in SharePoint.

[site]: ../resources/site.md

In addition to retrieving a [site by ID](site-get.md) you can retrieve a site based on server-relative URL path.

* Site collection hostname (contoso.sharepoint.com)
* Site path, relative to server hostname.

There is also a reserved site identifier, `root`, which always references the root site for a given target, as follows:

* `/sites/root`: The tenant root site.
* `/groups/{group-id}/sites/root`: The group's team site.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "site_getbypath" } -->
[!INCLUDE [permissions-table](../includes/permissions/site-getbypath-permissions.md)]

## HTTP Request
<!-- { "blockType": "ignored" } -->

```http
GET /sites/{hostname}:/{relative-path}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Example

### Request
To access the root SharePoint site with a relative path:

<!-- { "blockType": "request", "name": "get-site-by-hostname-and-path", "scopes": "sites.read.all", "tags": "service.sharepoint" } -->

```http
GET /sites/{hostname}:/{relative-path}
```

### Response

This method returns a [site][] resource for the site referenced by the unique identifier.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.site" } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE",
  "displayName": "OneDrive Team Site",
  "isPersonalSite": false,
  "name": "1drvteam",
  "createdDateTime": "2017-05-09T20:56:00Z",
  "lastModifiedDateTime": "2017-05-09T20:56:01Z",
  "webUrl": "https://contoso.sharepoint.com/teams/1drvteam"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
  ],
  "tocPath": "Sites/Get by path"
} -->

