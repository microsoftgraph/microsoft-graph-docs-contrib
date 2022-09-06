---
title: "Get webparts by position"
description: "Get a collection of WebParts by position information"
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Get webparts by position
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of [WebPart](../resources/webpart.md) by providing [webPartPosition](../resources/webpartposition.md) information.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{siteId}/pages/{sitePageId}/getWebPartsByPosition(horizontalSectionId={horizontalSectionId},columnId={columnId},webPartIndex={webPartIndex},isInVerticalSection={isInVerticalSection})
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [webPart](../resources/webpart.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_webpart"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{siteId}/pages/{sitePageId}/getWebPartsByPosition(horizontalSectionId={horizontalSectionId},columnId={columnId},webPartIndex={webPartIndex},isInVerticalSection={isInVerticalSection})
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.webPart)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.textWebPart",
      "id": "d79d70af-27ea-4208-8dce-23c3bf678664",
      "innerHtml": "<h2>How do you get started?</h2><p>Select 'Edit' to start working with this basic&nbsp;<a data-cke-saved-href=\"https://go.microsoft.com/fwlink/?linkid=2056662&amp;clcid=0x409\" href=\"https://go.microsoft.com/fwlink/?linkid=2056662&amp;clcid=0x409\">two-column</a>&nbsp;template with an emphasis on text and examples of text formatting. With your page in edit mode, select this paragraph and replace it with your own text. Then, select the Basic two-column template title and replace it, too. Type your name in the page author field under the title.</p><p>You've just edited a page template and you're on your way to making this page your own!</p><p><br></p>"
    }
  ]
}
```

