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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
|description|String|A brief description of the acronym that gives users more info about the acronym and what it stands for. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|displayName|String|The actual short form or acronym. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|standsFor|String collection|What the acronym stands for.|
|state|microsoft.graph.search.answerState|State of the acronym. Possible values are: `published`, `draft`, `excluded`, or `unknownFutureValue`.|
|webUrl|String|The URL of the page or website where users can go for more information about the acronym. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|



## Response

If successful, this method returns a `200 Ok` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_acronym_from_acronyms_e1"
}-->
```http
POST https://graph.microsoft.com/beta/search/acronyms
Content-Type: application/json

{
  "displayName": "DNN",
  "standsFor": "Deep Neural Network",
  "description": "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
  "webUrl": "http://microsoft.com/deep-neural-network",
  "state": "draft"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-acronym-from-acronyms-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-acronym-from-acronyms-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-acronym-from-acronyms-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-acronym-from-acronyms-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-acronym-from-acronyms-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-acronym-from-acronyms-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.acronym"
}-->
```http
HTTP/1.1 200 Ok
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```

