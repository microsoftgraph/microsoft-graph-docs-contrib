---
title: "Get article"
description: "Read the properties and relationships of a microsoft.graph.security.article object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get article
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.security.article](../resources/security-article.md) object.

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
GET /security/threatIntelligence/articles/{articleId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.article](../resources/security-article.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_article"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/articles/a272d5ab
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.article"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "$metadata#articles/$entity",
    "id": "a272d5ab",
    "createdDateTime": "2023-03-03T18:20:22.677Z",
    "lastUpdatedDateTime": "2023-03-03T18:20:22.677Z",
    "title": "Batloader Malware Abuses Legitimate Tools Uses Obfuscated JavaScript Files in Q4 2022 Attacks",
    "summary": {
        "content": "Trend Micro discusses Batloader campaigns that were observed in the last quarter of 2022.",
        "format": "markdown"
    },
    "isFeatured": false,
    "body": {
        "content": "#### Description\r\nTrend Micro discusses Batloader...",
        "format": "markdown"
    },
    "tags": [
        "OSINT",
        "Batloader",
        "RoyalRansomware",
        "Python",
        "JavaScript",
        "MSI",
        "PowerShell"
    ],
    "imageUrl": null
  }
}
```

