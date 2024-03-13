---
title: "List webparts"
description: "Get the webPart collection from a sitePage."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# List webparts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [webPart](../resources/webpart.md) resources from a [sitePage](../resources/sitepage.md). Sort by the order in which they appear on the page.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "webpart_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/webpart-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/webparts
GET /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts
GET /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [webPart](../resources/webpart.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.webPart)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.textWebPart",
      "id": "d79d70af-27ea-4208-8dce-23c3bf678664",
      "innerHtml": "<h2>How do you get started?</h2>"
    },
    {
      "@odata.type": "#microsoft.graph.standardWebPart",
      "id": "6346d908-f20d-4528-902f-3c2a9c8c2442",
      "webPartType": "d1d91016-032f-456d-98a4-721247c305e8",
      "data": {
        "audiences": [],
        "dataVersion": "1.9",
        "description": "Show an image on your page",
        "title": "Image",
        "properties": {
          "imageSourceType": 2,
          "altText": "",
          "overlayText": "",
          "siteid": "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
          "webid": "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
          "listid": "bdb41041-eb06-474e-ac29-87093386bb14",
          "uniqueid": "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
          "imgWidth": 4288,
          "imgHeight": 2848,
          "fixAspectRatio": false,
          "captionText": "",
          "alignment": "Center"
        },
        "serverProcessedContent": {
          "componentDependencies": [],
          "htmlStrings": [],
          "links": [],
          "searchablePlainTexts": [],
          "imageSources": [
            {
              "@odata.type": "#microsoft.graph.metaDataKeyStringPair",
              "key": "imageSource",
              "value": "/_LAYOUTS/IMAGES/VISUALTEMPLATEIMAGE1.JPG"
            }
          ],
          "customMetadata": [
            {
              "@odata.type": "#microsoft.graph.metaDataKeyValuePair",
              "key": "imageSource",
              "value": {
                "siteid": "0264cabe-6b92-450a-b162-b0c3d54fe5e8",
                "webid": "f3989670-cd37-4514-8ccb-0f7c2cbe5314",
                "listid": "bdb41041-eb06-474e-ac29-87093386bb14",
                "uniqueid": "d9f94b40-78ba-48d0-a39f-3cb23c2fe7eb",
                "width": "4288",
                "height": "2848"
              }
            }
          ]
        }
      }
    }
  ]
}
```
