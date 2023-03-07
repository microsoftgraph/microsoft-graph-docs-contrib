---
title: "List indicators"
description: "Get the articleIndicator resources from the indicators navigation property."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List articleIndicators for Article
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the articleIndicator resources from the indicators navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All|
|Delegated (personal Microsoft account)|Not Supported|
|Application|ThreatIntelligence.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/articles/{articleId}/indicators
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_articleindicator"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/articles/{articleId}/indicators
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.articleIndicator)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.articleIndicator",
      "id": "0b3f0361-0440-9f5d-f834-339d4cc532b8",
      "source": "String"
    }
  ]
}
```

