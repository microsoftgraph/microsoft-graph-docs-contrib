---
title: "Get intelligenceProfile"
description: "Read the properties and relationships of a microsoft.graph.security.intelligenceProfile object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get intelligenceProfile
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object.

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
GET /security/threatIntelligence/intelProfiles/{intelligenceProfileId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.intelligenceProfile](../resources/security-intelligenceprofile.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_intelligenceprofile"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/intelProfiles/{intelligenceProfileId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.intelligenceProfile"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.intelligenceProfile",
    "id": "e4752836-7b20-ed7c-8a05-5b53d7c9f248",
    "kind": "String",
    "title": "String",
    "firstActiveDateTime": "String (timestamp)",
    "aliases": [
      "String"
    ],
    "targets": [
      "String"
    ],
    "sponsorStates": [
      {
        "@odata.type": "microsoft.graph.security.intelligenceProfileSponsorState"
      }
    ],
    "summary": {
      "@odata.type": "microsoft.graph.security.formattedContent"
    },
    "description": {
      "@odata.type": "microsoft.graph.security.formattedContent"
    },
    "tradecraft": {
      "@odata.type": "microsoft.graph.security.formattedContent"
    }
  }
}
```

