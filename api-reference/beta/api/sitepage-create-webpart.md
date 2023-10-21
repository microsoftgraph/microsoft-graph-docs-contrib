---
title: "Create webPart"
description: "Create a new webPart at a specified position in the sitePage"
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Create webPart

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [webPart] at a specified position in the [sitePage].

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
POST /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts
POST /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts
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

In the request body, supply a JSON representation of the [textWebPart](../resources/textWebPart.md) or [standardWebPart](../resources/standardWebPart.md). 

To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.textwebpart` or `@odata.type=#microsoft.graph.standardwebpart` must be included in the request body.

## Response

If successful, this method returns a `201` and the created [webPart](../resources/webPart.md) object in the response body.

## Example

### Request

The following example shows how to create a new webpart.

<!-- { "blockType": "ignored" } -->

```http
POST /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.textWebPart",
  "innerHtml": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus blandit pellentesque ipsum tempor porta. Phasellus tincidunt et ipsum nec iaculis. Sed eu arcu tristique, congue erat a, consequat lorem. Suspendisse ac ullamcorper elit. Sed ultricies, risus sed hendrerit dictum, nunc massa ornare velit, a pharetra dolor urna quis lorem. Maecenas eget pellentesque purus, nec ultricies risus. Donec rhoncus lorem at euismod varius. Donec auctor sed mi vitae pharetra. Aenean id tempor mauris. Donec dui nulla, semper ut elit id, mattis commodo arcu. Aliquam erat volutpat."
}
```

---

### Response

If successful, this method returns a [webPart][] in the response body for the created webPart.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.webPart", "truncated": true } -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.textWebPart",
  "id": "51053496-e6f3-4161-94ac-07bdf4d92226",
  "innerHtml": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus blandit pellentesque ipsum tempor porta. Phasellus tincidunt et ipsum nec iaculis. Sed eu arcu tristique, congue erat a, consequat lorem. Suspendisse ac ullamcorper elit. Sed ultricies, risus sed hendrerit dictum, nunc massa ornare velit, a pharetra dolor urna quis lorem. Maecenas eget pellentesque purus, nec ultricies risus. Donec rhoncus lorem at euismod varius. Donec auctor sed mi vitae pharetra. Aenean id tempor mauris. Donec dui nulla, semper ut elit id, mattis commodo arcu. Aliquam erat volutpat."
}
```

[webPart]: ../resources/webPart.md

<!--
{
  "type": "#webpart.annotation",
  "description": "Create a WebPart.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "WebParts/Create",
  "suppressions": []
}
-->
