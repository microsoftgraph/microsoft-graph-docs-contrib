---
title: "Update newsLinkPage"
description: "Update the properties of a newsLinkPage object."
author: "shgangan"
ms.date: 04/01/2024
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: "apiPageType"
---

# Update newsLinkPage

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
|Content-Type| Required. application/json for JSON content, including the required **title** property in multipart requests. Multipart requests use the multipart/form-data; boundary=your-boundary content type.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|The descriptive text for the item. The maximum length limit is 250 characters. Inherited from [baseSitePage](../resources/basesitepage.md).|
|newsWebUrl|String|The URL of the news article referenced by the **newsLinkPage**. It can be an external link. The maximum length limit is 110 characters.|
|title|String|Title of the **newsLinkPage**. Inherited from [baseSitePage](../resources/basesitepage.md).|

> **Notes:**
> You can update the **bannerImage** property by uploading the image bytes of the new banner image you want to set. The banner image is autosaved in the site assets library, and the banner image URL is then generated based on the persisted file. Make a multipart request and set the `@microsoft.graph.bannerImageWebUrlContent` annotation to send the image content, as shown in the example.

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
PATCH https://graph.microsoft.com/beta/sites/c1370818-f5e0-4a40-a99b-be4520640642/pages/637c601e-0d0e-43c0-b50f-b18513bb9de2/microsoft.graph.newsLinkPage
Content-type: multipart/form-data; boundary=MyPartBoundary198374

--MyPartBoundary198374
Content-Disposition:form-data; name="metadata"
Content-Type: application/json

{
  "title": "External News | Scientists Discover Secret to Eternal Youth",
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
  "@odata.type": "#microsoft.graph.newsLinkPage",
  "createdDateTime": "2024-06-11T17:31:20Z",
  "description": " In a groundbreaking study, a team of scientists has reportedly discovered the secret to eternal youth. The research, conducted in a top-secret laboratory, claims to have identified a unique combination of natural ingredients that can halt the aging process.",
  "eTag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
  "id": "179210c2-637e-4c61-8491-331d0d4a0c05",
  "lastModifiedDateTime": "2024-06-11T17:31:21Z",
  "name": "Scientists-Discover-Secret-to-Eternal-Youth.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "title": "External News | Scientists Discover Secret to Eternal Youth",
  "pageLayout": "newsLink",
  "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/Scientists-Discover-Secret-to-Eternal-Youth(1)/BannerImage.png",
  "newsWebUrl": "https://someexternalnewssite.com/2024/06/11/scientists-discover-secret-to-eternal-youth",
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
  "description": "Update newslinkpage",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  "Error: /api/newslinkpage-update.md/update_newslinkpage:
      Error parsing resource definition: Unexpected character encountered while parsing number: M. Path '', line 1, position 2."
  ]
}
-->
