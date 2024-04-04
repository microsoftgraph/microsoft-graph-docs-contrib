---
title: "Update sitePage"
description: "Update the properties of a sitePage object."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Update sitePage

Namespace: microsoft.graph

Update the properties of a [sitePage](../resources/sitepage.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PATCH /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

These fields and be used in update requests.

| Property             | Type                                         | Description                                                                                                                                                                                                        |
| :------------------- | :------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| description                | String                                       | Description of the site page. Optional.                                                                                                                                                                                  |
| thumbnailWebUrl                | String                                       | Url of the site page's thumbnail image. Optional.                                                                                                                                                                                  |
| title                | String                                       | Title of the site page. Optional.                                                                                                                                                                                  |
| showComments         | Boolean                                      | Boolean to determine whether or not to show comments at the bottom of the page. Optional.                                                                                                                          |
| showRecommendedPages | Boolean                                      | Boolean to determine whether or not to show recommended pages at the bottom of the page. Optional.                                                                                                                 |
| promotionKind            | [PagePromotionType](../resources/sitepage.md#pagepromotiontype-values)      | Promotion kind of the SharePoint page. Optional. Only support promote a page (e.g from `page` to `newsPost`). Demote is not supported.                                                                                                                                                                      |
| titleArea            | [titleArea](../resources/titlearea.md)       | Title area on the site page. Optional.                                                                                                                                                                       |
| canvasLayout         | [canvasLayout](../resources/canvaslayout.md) | The layout of the content in a page, including horizontal sections and vertical section. A content of the entire page layout needs to be provided, the update function does not support partial updates. Optional. |

> **Notes:** :
> 1. To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.sitePage` must be included in the request body.
> 2. If you're using the response from the [Get sitepage](../api/sitepage-get.md) operation to update a **sitePage**, we recommend that you add the HTTP header `Accept: application/json;odata.metadata=none`. This will remove all OData metadata from the response. You can also manually remove all OData metadata.
> 3. Only the web part listed in the [Supported web parts](#supported-web-parts) section are supported when updating a [sitePage](../resources/sitepage.md) using the Microsoft Graph API. Attempting to add unsupported web parts will result in a failure or exception.

### Supported web parts

There are two kinds of web parts that can be added to a [sitePage](../resources/sitepage.md): [standardWebParts](../resources/standardwebpart.md) and [textWebPart](../resources/textwebpart.md). The following table lists the supported web parts for standard web parts.

| #   | Web Part       | Type                                   |
| --- | -------------- | -------------------------------------- |
| 1   | Bing Maps      | `e377ea37-9047-43b9-8cdb-a761be2f8e09` |
| 2   | Button         | `0f087d7f-520e-42b7-89c0-496aaf979d58` |
| 3   | Call To Action | `df8e44e7-edd5-46d5-90da-aca1539313b8` |
| 4   | Divider        | `2161a1c6-db61-4731-b97c-3cdb303f7cbb` |
| 5   | Document Embed | `b7dd04e1-19ce-4b24-9132-b60a1c2b910d` |
| 6   | Image          | `d1d91016-032f-456d-98a4-721247c305e8` |
| 7   | Image Gallery  | `af8be689-990e-492a-81f7-ba3e4cd3ed9c` |
| 8   | Link Preview   | `6410b3b6-d440-4663-8744-378976dc041e` |
| 9   | Org Chart      | `e84a8ca2-f63c-4fb9-bc0b-d8eef5ccb22b` |
| 10  | People         | `7f718435-ee4d-431c-bdbf-9c4ff326f46e` |
| 11  | Quick Links    | `c70391ea-0b10-4ee9-b2b4-006d3fcad0cd` |
| 12  | Spacer         | `8654b779-4886-46d4-8ffb-b5ed960ee986` |
| 13  | Youtube Embed  | `544dd15b-cf3c-441b-96da-004d5a8cea1d` |

## Response

If successful, this method returns a `200 OK` response code and an updated [sitePage](../resources/sitepage.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_sitepage"
}
-->

```http
PATCH https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePage",
  "title": "sample",
  "showComments": true,
  "showRecommendedPages": false
}
```
---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.sitePage",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sitePage",
  "id": "0dd6ddd6-45bd-4acd-b683-de0e6e7231b7",
  "name": "sample.aspx",
  "webUrl": "https://contoso.sharepoint.com/SitePages/sample.aspx",
  "title": "sample",
  "pageLayout": "article",
  "showComments": true,
  "showRecommendedPages": false,
  "createdBy": {
    "user": {
      "displayName": "Rahul Mittal",
      "email": "rahmit@contoso.com"
    }
  },
  "lastModifiedBy": {
    "user": {
      "displayName": "Rahul Mittal",
      "email": "rahmit@contoso.com"
    }
  },
  "publishingState": {
    "level": "draft",
    "versionId": "0.1"
  },
  "titleArea": {
    "enableGradientEffect": true,
    "imageWebUrl": "https://cdn.hubblecontent.osi.office.net/m365content/publish/005292d6-9dcc-4fc5-b50b-b2d0383a411b/image.jpg",
    "layout": "colorBlock",
    "showAuthor": true,
    "showPublishedDate": false,
    "showTextBlockAboveTitle": false,
    "textAboveTitle": "TEXT ABOVE TITLE",
    "textAlignment": "left",
    "title": "sample",
    "imageSourceType": 2
  }
}
```
