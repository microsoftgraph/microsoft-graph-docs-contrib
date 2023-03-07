---
title: "Get articleIndicator"
description: "Read the properties and relationships of a microsoft.graph.security.articleIndicator object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get articleIndicator
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) object.

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
GET /security/threatIntelligence/articleIndicators/{articleIndicatorId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_articleindicator"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/articleIndicators/{articleIndicatorId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.articleIndicator"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.articleIndicator",
    "id": "ff3eecd2-a2be-27c2-8dc0-40d1c0eada55",
    "source": "microsoftDefenderThreatIntelligence",
    "artifact": {
        "@odata.type": "#microsoft.graph.security.hostname",
        "id": "fake-malicious.site"
    }
  }
}
```

