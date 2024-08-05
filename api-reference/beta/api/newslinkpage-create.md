---
title: "Create a new NewsLink page in a SharePoint site"
description: "Create a new newsLinkPage in the site pages list in a site."
author: "shgangan"
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: "apiPageType"
---

# Create a newsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [newsLinkPage][] in the site pages [list][] in a [site][].

[newsLinkPage]: ../resources/newslinkpage.md
[list]: ../resources/list.md
[site]: ../resources/site.md

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "newslinkpage_create" } -->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-create-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /sites/{site-id}/pages
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|	`application/json` for a non-multipart request, i.e. when uploading a bannerImage to create a newslinkpage is omitted. When uploading a a bannerImage while creating a newslinkpage, the request will be a multipart request. Multipart requests use `multipart/form-data; boundary=your-boundary` content type. `application/json` for "request" part, and content-type of the the bannerImage `application/json` for the "content" part of the multipart request. Required.|
|Prefer | include-unknown-enum-members. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values), which is a [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink` |

## Request body

In the request body, supply a JSON representation of the [newsLinkPage](../resources/newsLinkPage.md) object.

> **Notes:**
>
> 1. To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.newsLinkPage` must be included in the request body.
> 2. Currently, to set the bannerImageWebUrl, we provide the capability to upload the image bytes directly, which gets auto saved in the site assets library, and the bannerImageWebUrl is then generated based on the persisted file. The way to do that would be to make a multipart request and set the @microsoft.graph.bannerImageWebUrlContent annotation to send the image content, as illustrated in the example.

You can specify the following properties when creating a [newsLinkPage](../resources/newslinkpage.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|The descriptive text for the item. Inherited from [baseItem](../resources/baseitem.md). Has a max length limit of 250 characters. Optional.|
|newsWebUrl|String|The URL of the news article referenced by the [newsLinkPage](../resources/newslinkpage.md). Can be an external link. Has a max length limit of 110 characters. Required.|
|title|String|Title of the [newsLinkPage](../resources/newslinkpage.md). Inherited from [baseSitePage](../resources/basesitepage.md). Required.|

## Response

If successful, this method returns a `201 Created` response code and a [newsLinkPage](../resources/newslinkpage.md) object in the response body.

## Example

The following example shows how to create a [newsLinkPage](../resources/newslinkpage.md) page.

### Request

<!-- { "blockType": "request", "name": "create-newslinkpage", "scopes": "sites.readwrite.all" } -->

```http
POST https://graph.microsoft.com/beta/sites/{id}/pages
Content-type: multipart/form-data; boundary=MyPartBoundary198374

--MyPartBoundary198374
Content-Disposition: form-data; name="request"
Content-Type: application/json

{
  "@odata.type" : "#microsoft.graph.newsLinkPage",
  "title" : "Microsoft Build brings AI tools to the forefront for developers",
  "newsWebUrl" : "https://blogs.microsoft.com/blog/2023/05/23/microsoft-build-brings-ai-tools-to-the-forefront-for-developers",
  "description" : "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.",
  "@microsoft.graph.bannerImageWebUrlContent" : "name:content"
}

--MyPartBoundary198374
Content-Disposition: form-data; name="content"; filename="b3.jpg"
Content-Type: image/jpeg

... binary image data ...

--MyPartBoundary198374
```

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.newsLinkPage"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#sites('976b3828-eade-49c7-a0a6-5baff3f710d9')/pages/$entity",
  "@odata.type": "#microsoft.graph.newsLinkPage",
  "@odata.etag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
  "createdDateTime": "2024-06-11T17:31:20Z",
  "description": "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.",
  "eTag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
  "id": "179210c2-637e-4c61-8491-331d0d4a0c05",
  "lastModifiedDateTime": "2024-06-11T17:31:21Z",
  "name": "Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "title": "Microsoft Build brings AI tools to the forefront for developers",
  "pageLayout": "newsLink",
  "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers(7)/BannerImage.png",
  "newsWebUrl": "https://blogs.microsoft.com/blog/2023/05/23/microsoft-build-brings-ai-tools-to-the-forefront-for-developers",
  "createdBy": {
    "user": {
      "displayName": "John Doe",
      "email": "jdoe@contoso.com"
    }
  },
  "lastModifiedBy": {
    "user": {
      "displayName": "John Doe",
      "email": "jdoe@contoso.com"
    }
  },
  "parentReference": {
    "siteId": "056d8292-ef8a-44fe-bd22-97abf08659b1"
  },
  "publishingState": {
    "level": "checkout",
    "versionId": "0.1",
    "checkedOutBy": {
      "user": {
        "displayName": "John Doe",
        "email": "jdoe@contoso.com"
      }
    }
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Update checklistItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  "Error: /api/newslinkpage-update.md/update_newslinkpage: 
    Error parsing resource definition: Unexpected character encountered while parsing number: M. Path '', line 1, position 2"
  ]
}
-->
