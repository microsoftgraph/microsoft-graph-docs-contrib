---
title: 'Create webPart'
description: 'Create a new webPart at a specified position in the sitePage'
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Create webPart

Namespace: microsoft.graph

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
POST /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts
POST /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontal-section-id}/columns/{horizontal-section-column-id}/webparts
```

## Optional query parameters

| Name  | Description                                                                          |
| :---- | :----------------------------------------------------------------------------------- |
| index | The position at which the web part should be inserted in the collection of web parts |

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [textWebPart](../resources/textWebPart.md) or [standardWebPart](../resources/standardWebPart.md).

To ensure successful parsing of the request body, the `@odata.type=#microsoft.graph.textwebpart` or `@odata.type=#microsoft.graph.standardwebpart` must be included in the request body.

### Supported web parts

There are two kinds of web parts that can be added to a [sitePage](../resources/sitePage.md): [standardWebPart](../resources/standardWebPart.md) and [textWebPart](../resources/textWebPart.md).

For [standardWebPart](../resources/standardWebPart.md), only the following are supported when updating using the Microsoft Graph API. Attempting to add unsupported web parts will result in a failure or exception.

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

If successful, this method returns a `201` and the created [webPart](../resources/webPart.md) object in the response body.

## Example

### Request

The following example shows how to create a new webpart.

<!-- { "blockType": "ignored" } -->

```http
POST /sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202//microsoft.graph.sitePage/canvasLayout/verticalSection/webparts
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
