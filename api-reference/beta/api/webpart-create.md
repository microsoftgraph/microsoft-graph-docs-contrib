---
author: sangle7
description: 'Create a new sitePage in the site pages list in a site.'
ms.date: 05/07/2018
title: Create WebPart
ms.localizationpriority: medium
ms.prod: 'sharepoint'
doc_type: apiPageType
---

# Create WebPart

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [webPart] at the specified position in the a [sitePage]

[sitepage]: ../resources/sitePage.md
[webPart]: ../resources/webPart.md

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitepage/canvasLayout/verticalSection/webparts
POST /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitepage/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts
```

## Optional query parameters

| Name  | Description                     |
| :---- | :------------------------------ |
| index | The position at which the web part should be inserted in the collection of web parts |

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [textWebPart](../resources/textWebPart.md) or [standardWebPart](../resources/standardWebPart.md). The '@odata.type' field must be filled accordingly.

## Example

The following example shows how to create a new webpart.

# [HTTP](#tab/http)

<!-- { "blockType": "request", "name": "create-webpart", "scopes": "sites.readwrite.all" } -->

```http
POST /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitepage/canvasLayout/verticalSection/webparts
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.textWebPart",
  "innerHtml": "Adds a new web part at the specified index in the collection of web parts."
}
```

---

## Response

If successful, this method returns a [webPart][] in the response body for the created page.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.webPart", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.textWebPart",
  "innerHtml": "Adds a new web part at the specified index in the collection of web parts."
}
```

[webPart]: ../resources/webPart.md

<!--
{
  "type": "#webpart.annotation",
  "description": "Create a WebPart.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Pages/Create",
  "suppressions": []
}
-->
