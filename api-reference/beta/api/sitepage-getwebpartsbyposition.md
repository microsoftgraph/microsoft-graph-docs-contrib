---
title: "sitepage: getWebPartsByPosition"
description: "Get a collection of webParts by position information"
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# sitepage: getWebPartsByPosition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of [webPart](../resources/webpart.md) by providing [webPartPosition](../resources/webpartposition.md) information.

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
GET /sites/{siteId}/pages/{sitePageId}/getWebPartsByPosition(horizontalSectionId={horizontalSectionId},columnId={columnId},webPartIndex={webPartIndex},isInVerticalSection={isInVerticalSection})
```

## Function parameters

In the request URL, provide one or more following parameters with a valid value.

| Parameter           | Type    | Description                                                                                                                                                    |
| :------------------ | :------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| columnId            | Double  | Indicate the identifier of the column where the WebPart located in. Only works if `horizontalSectionId` is provided.                                           |
| horizontalSectionId | Double  | Indicate the horizontal section where the WebPart located in.                                                                                                  |
| isInVerticalSection | boolean | Indicate whether the WebPart located in the vertical section.                                                                                                  |
| webPartIndex        | Double  | Index of the current WebPart. Represents the order of WebPart in this column or section. Only works if either `columnId` or `isInVerticalSection` is provided. |

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


<!-- {
  "blockType": "request",
  "name": "get_webparts_by_position"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{siteId}/pages/{sitePageId}/getWebPartsByPosition(horizontalSectionId={horizontalSectionId},columnId={columnId},webPartIndex={webPartIndex},isInVerticalSection={isInVerticalSection})
```

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
    }
  ]
}
```
