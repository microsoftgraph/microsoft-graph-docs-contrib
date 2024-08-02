---
title: "Get newsLinkPage"
description: "Retrieve the the metadata of a newsLinkPage in the site pages list in a site."
author: "shgangan"
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: "apiPageType"
---

# Get newsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Retrieve the the metadata of a [newsLinkPage](../resources/newslinkpage.md) in the site pages [list][] of a [site][].

[list]: ../resources/list.md
[site]: ../resources/site.md

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "newslinkpage_get"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{site-id}/pages/{page-id}/microsoft.graph.newsLinkPage
```

## Optional query parameters

This method supports the `$count`, `$expand`, `$filter`, `$orderby`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [newsLinkPage](../resources/newslinkpage.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)

<!--{
  "blockType": "request",
  "name": "get-newslinkpage",
  "scopes": "sites.read.all"
}
-->

```http
GET /sites/056d8292-ef8a-44fe-bd22-97abf08659b1/pages/cb9c62e1-07da-46ec-88dc-aed1d5164727/microsoft.graph.newsLinkPage
prefer: include-unknown-enum-members
```
---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.newsLinkPage",
  "isCollection":false
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "createdDateTime": "2024-06-05T20:39:55Z",
  "description": "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate."
  "eTag": "\"{57AFF05D-6C80-4D36-B051-ACC211400306},4\"",
  "id": "57aff05d-6c80-4d36-b051-acc211400306",
  "lastModifiedDateTime": "2024-06-05T20:39:57Z",
  "name": "Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "title": "Microsoft Build brings AI tools to the forefront for developers",
  "pageLayout": "newsLink",
  "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers/BannerImage.png",
  "newsWebUrl": "https://blogs.microsoft.com/blog/2023/05/23/microsoft-build-brings-ai-tools-to-the-forefront-for-developers/",
  "createdBy": {
      "user": {
          "displayName": "SharePoint App"
      }
  },
  "lastModifiedBy": {
      "user": {
          "displayName": "SharePoint App"
      }
  },
  "parentReference": {
      "siteId": "056d8292-ef8a-44fe-bd22-97abf08659b1"
  },
  "publishingState": {
      "level": "published",
      "versionId": "1.0"
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Get a newslinkpage in a site",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Get",
  "suppressions": [
  ]
}
-->