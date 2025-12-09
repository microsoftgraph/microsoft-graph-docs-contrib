---
title: List newsLinkPage
description: Get a list of the newsLinkPage objects and their properties.
author: shgangan
ms.date: 04/01/2024
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

<!-- { "blockType": "permissions", "name": "newslinkpage_list" } -->
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

This method supports the `$count`, `$expand`, `$filter`, `$orderBy`, `$select`, and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Prefer | include-unknown-enum-members. Use the `Prefer: include-unknown-enum-members` request header to get the following values in [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values), which is a [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink`. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [newsLinkPage](../resources/newslinkpage.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_newslinkpage"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/056d8292-ef8a-44fe-bd22-97abf08659b1/pages/microsoft.graph.newsLinkPage
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-newslinkpage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-newslinkpage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-newslinkpage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-newslinkpage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-newslinkpage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-newslinkpage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.newsLinkPage)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#sites('056d8292-ef8a-44fe-bd22-97abf08659b1')/pages/microsoft.graph.newsLinkPage",
  "value": [
    {
      "@odata.type": "#microsoft.graph.newsLinkPage",
      "createdDateTime": "2024-06-11T17:31:20Z",
      "description": " In a groundbreaking study, a team of scientists has reportedly discovered the secret to eternal youth. The research, conducted in a top-secret laboratory, claims to have identified a unique combination of natural ingredients that can halt the aging process.",
      "eTag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
      "id": "179210c2-637e-4c61-8491-331d0d4a0c05",
      "lastModifiedDateTime": "2024-06-11T17:31:21Z",
      "name": "Scientists-Discover-Secret-to-Eternal-Youth.aspx",
      "webUrl": "https://contoso.sharepoint.com/SitePages/Scientists-Discover-Secret-to-Eternal-Youth.aspx",
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
        "level": "published",
        "versionId": "1.0"
      }
    },
    {
      "@odata.type": "#microsoft.graph.newsLinkPage",
      "createdDateTime": "2024-06-11T17:31:20Z",
      "description": "You only need two simple letters to accurately convey the major shift in the technology space this year: A and I. Beyond those letters, however, is a complex, evolving and exciting way in which we work, communicate and collaborate.",
      "eTag": "\"{179210C2-637E-4C61-8491-331D0D4A0C05},2\"",
      "id": "179210c2-637e-4c61-8491-331d0d4a0c05",
      "lastModifiedDateTime": "2024-06-11T17:31:21Z",
      "name": "microsoft-build-ai-tools-developers.aspx",
      "webUrl": "https://contoso.sharepoint.com/SitePages/Microsoft-Build-brings-AI-tools-to-the-forefront-for-developers.aspx",
      "title": "Microsoft Build brings AI tools to the forefront for developers",
      "pageLayout": "newsLink",
      "bannerImageWebUrl": "https://contoso.sharepoint.com/_layouts/15/getpreview.ashx?path=/SiteAssets/SitePages/microsoft-build-ai-tools-developers/BannerImage.png",
      "newsWebUrl": "https://someexternalnewssite.com/2024/05/23/microsoft-build-ai-tools-developers",
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
        "level": "published",
        "versionId": "1.0"
      }
    }
  ]
}
```

