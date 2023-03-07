---
title: "List articles"
description: "Read the properties and relationships of a microsoft.graph.security.article objects."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List articles
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a list of [microsoft.graph.security.article](../resources/security-article.md) objects.

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
GET /security/threatIntelligence/articles
```

## Optional query parameters
This method supports the `$select`, `$search`, `$top`, `$skip`, `$orderBy`, and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


The API enforces the following conditions when supporting `$select`:
* Only single-term searches are supported today

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
GET https://graph.microsoft.com/beta/security/threatIntelligence/articles
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
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.article",
      "id": "dc5ca917-48fd-d7d5-eec0-2d492f042636",
      "createdDateTime": "String (timestamp)",
      "lastUpdatedDateTime": "String (timestamp)",
      "title": "String",
      "summary": {
        "@odata.type": "microsoft.graph.security.formattedContent"
      },
      "featured": "Boolean",
      "body": {
        "@odata.type": "microsoft.graph.security.formattedContent"
      },
      "tags": [
        "String"
      ],
      "imageUrl": "String"
    }
  ]
}
```

