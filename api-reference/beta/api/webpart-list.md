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

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /sites/{sitesId}/pages/{sitePageId}/webparts
GET /sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts
GET /sites/{sitesId}/pages/{sitePageId}/canvasLayout/verticalSection/webparts
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [webPart](../resources/webpart.md) objects in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_webpart"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-webpart-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-webpart-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-webpart-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-webpart-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-webpart-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-webpart-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response

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
