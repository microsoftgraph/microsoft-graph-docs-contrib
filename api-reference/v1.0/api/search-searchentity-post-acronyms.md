---
title: "Create acronym"
description: "Create a new acronym object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Create acronym

Namespace: microsoft.graph.search

Create a new [acronym](../resources/search-acronym.md) object.

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
POST /search/acronyms
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [acronym](../resources/search-acronym.md) object.

The following table shows the properties that are available when you create an [acronym](../resources/search-acronym.md).

|Property|Type|Description|
|:---|:---|:---|
|description|String|A brief description of the acronym that gives users more information about the acronym and what it stands for. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|The actual short form or acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|standsFor|String|What the acronym stands for.|
|state|microsoft.graph.search.answerState|State of the acronym. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|webUrl|String|The URL of the page or website where users can go for more information about the acronym. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Response

If successful, this method returns a `201 Created` response code with the ID of the acronym created.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_acronym_from_acronyms_e1"
}-->
```http
POST https://graph.microsoft.com/v1.0/search/acronyms
Content-Type: application/json

{
  "displayName": "DNN",
  "standsFor": "Deep Neural Network",
  "description": "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
  "webUrl": "http://microsoft.com/deep-neural-network",
  "state": "draft"
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.acronym"
}-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```
