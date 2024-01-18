---
title: "Update acronym"
description: "Update the properties of an acronym object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Update acronym

Namespace: microsoft.graph.search

Update the properties of an [acronym](../resources/search-acronym.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /search/acronyms/{acronymsId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|A brief description of the acronym that gives users more information about the acronym and what it stands for. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|The actual short form or acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|standsFor|String|What the acronym stands for.|
|state|microsoft.graph.search.answerState|State of the acronym. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|webUrl|String|The URL of the page or website where users can go for more information about the acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_acronym"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/search/acronyms/733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "description": "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers."
}
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
