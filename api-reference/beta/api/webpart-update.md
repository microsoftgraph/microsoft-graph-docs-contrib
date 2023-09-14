---
title: "Update webPart"
description: "Update the properties of a webPart."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Update webPart

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [webPart](../resources/webpart.md) object.

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
PATCH /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/webParts/{webPartId}
PATCH /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts/{webPartIndex}
PATCH /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}/webparts/{webPartIndex}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [textWebPart](../resources/textWebPart.md) or [standardWebPart](../resources/standardWebPart.md). 

To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.textwebpart` or `@odata.type=#microsoft.graph.standardwebpart` must be included in the request body.

## Response

If successful, this method returns a `200 OK` response code and an updated [webPart](../resources/webpart.md) object in the response body.

## Example

### Request

The following example shows how to update a webpart.

<!-- { "blockType": "ignored" } -->

```http
PATCH /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/webParts/{webpartId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.textWebPart",
  "innerHtml": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus blandit pellentesque ipsum tempor porta. Phasellus tincidunt et ipsum nec iaculis. Sed eu arcu tristique, congue erat a, consequat lorem. Suspendisse ac ullamcorper elit. Sed ultricies, risus sed hendrerit dictum, nunc massa ornare velit, a pharetra dolor urna quis lorem. Maecenas eget pellentesque purus, nec ultricies risus. Donec rhoncus lorem at euismod varius. Donec auctor sed mi vitae pharetra. Aenean id tempor mauris. Donec dui nulla, semper ut elit id, mattis commodo arcu. Aliquam erat volutpat."
}
```

### Response

If successful, this method returns a [webPart][] in the response body for the updated webpart.

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.webPart", "truncated": true } -->

```http
HTTP/1.1 200 OK
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
  "description": "Update a WebPart.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "WebParts/Update",
  "suppressions": []
}
-->
