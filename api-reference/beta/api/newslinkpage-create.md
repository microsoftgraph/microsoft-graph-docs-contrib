---
title: "Create newsLinkPage"
description: "Create a new news link page in the site pages list of a site."
author: "shgangan"
ms.date: 04/01/2024
ms.localizationpriority: "medium"
ms.subservice: "sharepoint"
doc_type: "apiPageType"
---

# Create newsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [newsLinkPage](../resources/newslinkpage.md) in the site pages [list](../resources/list.md) of a [site](../resources/site.md).

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
|Content-Type|`application/json` for for the json content, including for the required "Title" property of multipart requests. Multipart requests use the `multipart/form-data; boundary=your-boundary` content type. |
|Prefer | `include-unknown-enum-members`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values), which is a [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink`. |

## Request body

In the request body, supply a JSON representation of the [newsLinkPage](../resources/newslinkpage.md) object.
The body must contain required properties placed directly in the request body, but to set a banner image by uploading an image it must contain multipart message format as shown in the example. For the banner image upload, since you're sending binary data, then you must send a multipart request.

> **Notes:**
> * To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.newsLinkPage` must be included in the request body.
> * Currently, to set the **bannerImageWebUrl**, we provide the capability to upload the image bytes directly, which gets auto saved in the site assets library, and the **bannerImageWebUrl** is then generated based on the persisted file. The way to do that would be to make a multipart request and set the `@microsoft.graph.bannerImageWebUrlContent` annotation to send the image content, as illustrated in the example.

You can specify the following properties when you create a [newsLinkPage](../resources/newslinkpage.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|The descriptive text for the item. The maximum length limit is 250 characters. Optional. Inherited from [baseSitePage](../resources/basesitepage.md).|
|newsWebUrl|String|The URL of the news article referenced by the **newsLinkPage**. It can be an external link. The maximum length limit is 110 characters. Required.|
|title|String|Title of the **newsLinkPage**. Required. Inherited from [baseSitePage](../resources/basesitepage.md).|

## Response

If successful, this method returns a `201 Created` response code and a [newsLinkPage](../resources/newslinkpage.md) object in the response body.

## Example - Create a [newsLinkPage](../resources/newslinkpage.md) with only required properties

The following example shows how to create a [newsLinkPage](../resources/newslinkpage.md) page using only the required properties.

### Request
The following example shows a request.

<!-- { "blockType": "request", "name": "create-newslinkpage", "scopes": "sites.readwrite.all" } -->
``````
POST /sites/c1370818-f5e0-4a40-a99b-be4520640642/pages
prefer: include-unknown-enum-members
Content-Type: application/json
``````
```json
{
  "@odata.type" : "#microsoft.graph.newsLinkPage",
  "newsWebUrl":"https://someexternalnewssite.com/2023/09/08/tech-giant-unveils-first-self-driving-bicycle",
  "title": "Tech Giant Unveils First Self-Driving Bicycle"
}
```

### Response

The following example shows how to create a [newsLinkPage](../resources/newslinkpage.md) page and using only required fields.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.newsLinkPage"
}
-->
```
HTTP/1.1 201 Created
Content-type: application/json
```
```json
{
  "eTag": "\"{6A34958A-6F84-4571-A26E-B2CEB20261EB},3\"",
  "id": "6a34958a-6f84-4571-a26e-b2ceb20261eb",
  "lastModifiedDateTime": "2023-09-10T18:46:23Z",
  "name": "Tech-Giant-Unveils-First-Self-Driving-Bicycle.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Tech-Giant-Unveils-First-Self-Driving-Bicycle.aspx",
  "title": "Tech Giant Unveils First Self-Driving Bicycle",
  "pageLayout": "newsLink",
  "newsWebUrl": "https://someexternalnewssite.com/2023/09/08/tech-giant-unveils-first-self-driving-bicycle",
  "createdBy": {
    "user": {
      "displayName": "Jane Doe"
    }
  },
  "lastModifiedBy": {
    "user": {
      "displayName": "Jane Doe"
    }
  },
  "contentType": {
    "id": "0x0101009D1CB255DA76424F860D91F20E6C4118002A50BFCFB7614729B56886FADA02339B000B27C676C81DC54289A1417148759BF3",
    "name": "Repost Page"
  },
  "publishingState": {
    "level":"checkout",
    "versionId":"0.1",
    "checkedOutBy": {
      "user": {
        "displayName":"Jane Doe",
        "email":"JaneDoe@contoso.sharepoint.com"
      }
    }
  }
}
```

## Example - Create a newsLink page including uploading BannerImage File Content

The following example shows how to create a [newsLinkPage](../resources/newslinkpage.md) page and uploading a banner image and setting the banner Image content for the newslink page. This requires a multipart request.

### Request

The following example shows a request.

<!-- { "blockType": "request", "name": "create-newslinkpage-multipart", "scopes": "sites.readwrite.all" } -->
```http
POST https://graph.microsoft.com/beta/sites/c1370818-f5e0-4a40-a99b-be4520640642/pages
Prefer: include-unknown-enum-members
Content-type: multipart/form-data; boundary=MyPartBoundary198374

--MyPartBoundary198374
Content-Disposition: form-data; name="request"
Content-Type: application/json
{
  "@odata.type" : "#microsoft.graph.newsLinkPage",
  "title" : "Microsoft Build brings AI tools to the forefront for developers",
  "newsWebUrl" : "https://someexternalnewssite.com/2023/05/23/scientists-discover-secret-to-eternal-youth",
  "description" : "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.",
  "@microsoft.graph.bannerImageWebUrlContent" : "name:content"
}

--MyPartBoundary198374
Content-Disposition: form-data; name="content"; filename="b3.jpg"
Content-Type: image/jpeg

... binary image data ...

--MyPartBoundary198374
```

### Response

The following example shows the response. In the event of some failure uploading or persisting the banner image, the reponse will contain @microsoft.graph.bannerImageWebUrlContentError with an appropriately descriptive error message string.

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
  "@odata.type": "#microsoft.graph.newsLinkPage",
  "createdDateTime": "2024-06-11T17:31:20Z",
  "description": " In a groundbreaking study, a team of scientists has reportedly discovered the secret to eternal youth. The research, conducted in a top-secret laboratory, claims to have identified a unique combination of natural ingredients that can halt the aging process.",
  "eTag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
  "id": "179210c2-637e-4c61-8491-331d0d4a0c05",
  "lastModifiedDateTime": "2024-06-11T17:31:21Z",
  "name": "Scientists-Discover-Secret-to-Eternal-Youth.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
  "title": "Scientists Discover Secret to Eternal Youth",
  "pageLayout": "newsLink",
  "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/Scientists-Discover-Secret-to-Eternal-Youth/BannerImage.png",
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
  "description": "Create newsLinkPage",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  "Error: /api/newslinkpage-create.md/create-newslinkpage:
      Error parsing resource definition: Unexpected character encountered while parsing number: M. Path '', line 1, position 2.",
  "Error: /api/newslinkpage-create.md/create-newslinkpage-multipart:
      Error parsing resource definition: Unexpected character encountered while parsing number: M. Path '', line 1, position 2.",
  "Error: /api/newslinkpage-create.md/create-newslinkpage:
      Error parsing resource definition: Unexpected character encountered while parsing number: M. Path '', line 1, position 2."
  ]
}
-->
