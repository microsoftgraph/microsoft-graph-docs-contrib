---
title: "Get intelligenceProfileIndicator"
description: "Read the properties and relationships of an intelligenceProfileIndicator object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get intelligenceProfileIndicator

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ThreatIntelligence.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/intelProfileIndicators/{intelligenceProfileIndicatorId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.intelligenceProfileIndicator](../resources/security-intelligenceprofileindicator.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_intelligenceprofileindicator",
  "sampleKeys": ["ff3eecd2-a2be-27c2-8dc0-40d1c0eada55"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/intelProfileIndicators/ff3eecd2-a2be-27c2-8dc0-40d1c0eada55
```

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.intelligenceProfileIndicator"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.intelligenceProfileIndicator",
    "id": "ff3eecd2-a2be-27c2-8dc0-40d1c0eada55",
    "source": "microsoftDefenderThreatIntelligence",
    "firstSeenDateTime": "2022-05-02T23:09:20.000Z",
    "lastSeenDateTime": null,
    "artifact": {
        "@odata.type": "#microsoft.graph.security.hostname",
        "id": "fake-malicious.site"
    }
  }
}
```
