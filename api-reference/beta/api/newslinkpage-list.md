---
title: List newsLinkPage
description: Get a list of the newsLinkPage objects and their properties.
author: shgangan
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# List newsLinkPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [newsLinkPage](../resources/newslinkpage.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "newslinkpage-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/newslinkpage-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /sites/{site-id}/pages/microsoft.graph.newsLinkPage
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer | include-unknown-enum-members. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values), which is a [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink`. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [newsLinkPage](../resources/newslinkpage.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_newslinkpage"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/056d8292-ef8a-44fe-bd22-97abf08659b1/pages/microsoft.graph.newsLinkPage
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.newsLinkPage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#sites('056d8292-ef8a-44fe-bd22-97abf08659b1')/pages/microsoft.graph.newsLinkPage",
  "value": [
    {
      "@odata.etag": "\"{3CBB2560-F640-453F-A37A-FA1377368EFD},4\"",
      "createdDateTime": "2024-06-05T20:39:36Z",
      "eTag": "\"{3CBB2560-F640-453F-A37A-FA1377368EFD},4\"",
      "id": "3cbb2560-f640-453f-a37a-fa1377368efd",
      "lastModifiedDateTime": "2024-06-05T20:39:42Z",
      "name": "Microsoft-and-Meta-expand-their-AI-partnership-with-Llama-2-on-Azure-and-Windows.aspx",
      "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-and-Meta-expand-their-AI-partnership-with-Llama-2-on-Azure-and-Windows.aspx",
      "title": "Microsoft and Meta expand their AI partnership with Llama 2 on Azure and Windows",
      "pageLayout": "newsLink",
      "bannerImageWebUrl": "https://contoso.sharepoint.com/SiteAssets/SitePages/Microsoft-and-Meta-expand-their-AI-partnership-with-Llama-2-on-Azure-and-Windows(5)/BannerImage.webp",
      "newsWebUrl": "https://blogs.microsoft.com/blog/2023/07/18/microsoft-and-meta-expand-their-ai-partnership-with-llama-2-on-azure-and-windows/",
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
    },
    {
      "@odata.etag": "\"{406766CD-52BD-4221-9310-2954FFCA7A73},2\"",
      "createdDateTime": "2024-06-05T20:39:55Z",
      "description": "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.",
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
  ]
}
```

