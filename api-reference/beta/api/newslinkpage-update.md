---
title: "Update NewsLink page in a SharePoint site"
description: "Update the properties of a newsLinkPage object."
author: "shgangan"
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: "apiPageType"
---
# Update a newsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [newsLinkPage](../resources/newslinkpage.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "newslinkpage-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /sites/{site-id}/pages/{pageId}/microsoft.graph.newsLinkPage
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

> **Notes:**
> Currently, you can update the bannerImage, by uploading the image bytes of the new bannerImage you want to set directly, which gets auto saved in the site assets library, and the bannerImageWebUrl is then generated based on the persisted file. The way to do that would be to make a multipart request and set the @microsoft.graph.bannerImageWebUrlContent annotation to send the image content, as illustrated in the example.

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|The descriptive text for the item. Inherited from [baseItem](../resources/baseitem.md). Has a max length limit of 250 characters.|
|newsWebUrl|String|The URL of the news article referenced by the [newsLinkPage](../resources/newslinkpage.md). Can be an external link. Has a max length limit of 110 characters.|
|title|String|Title of the [newsLinkPage](../resources/newslinkpage.md). Inherited from [baseSitePage](../resources/basesitepage.md).|

## Response

If successful, this method returns a `200 OK` response code and an updated [newsLinkPage](../resources/newslinkpage.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_newslinkpage"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/sites/{site-id}/pages/{pageId}/microsoft.graph.newsLinkPage
Content-type: multipart/form-data; boundary=MyPartBoundary198374

--MyPartBoundary198374
Content-Disposition:form-data; name="metadata"
Content-Type: application/json

{
  "title": "Microsoft Blog | Microsoft Build brings AI tools to the forefront for developers",
  "@microsoft.graph.bannerImageWebUrlContent" : "name:content"
}

--MyPartBoundary198374
Content-Disposition:form-data; name="content"
Content-Type: image/jpeg

... binary file data ...

--MyPartBoundary198374--
```

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
HTTP/1.1 200 OK
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
  "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/Microsoft-Blog-Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers/BannerImage.jpeg",
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
      Error parsing resource definition: Unexpected character encountered while parsing number: M. Path '', line 1, position 2."
  ]
}
-->
