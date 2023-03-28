---
title: "Get hostReputation"
description: "Get the hostReputation resources from the reputation navigation property."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get hostReputation

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [hostReputation](../resources/security-hostreputation.md) resources from the **reputation** navigation property.

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
GET /security/threatIntelligence/hosts/{hostId}/reputation
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_hostreputation",
  "sampleKeys": ["fake-malicious.site"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/fake-malicious.site/reputation
```

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.hostReputation"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.security.hostReputation",
    "id": "1e3b9ded-abb6-1828-c4ef-a5ca48b287a0",
    "classification": "malicious",
    "score": 100,
    "rules": [
      {
        "name": "Microsoft Defender Threat Intelligence Intel Article",
        "description": "Activity Snapshot: DPRK Actors Target Maritime Sector",
        "severity": "high",
        "relatedDetailsUrl": "https://ti.defender.microsoft.com/article/831b70a4"
      },
      {
        "name": "Name server",
        "description": "Domain is using a name server that has been associated with suspicious behavior",
        "severity": "medium",
        "relatedDetailsUrl": null
      },
      {
        "name": "Registrar",
        "description": "Domains registered using this registrar are frequently associated with suspicious behavior",
        "severity": "medium",
        "relatedDetailsUrl": null
      },
      {
        "name": "Resolving IP Address",
        "description": "192.168.1.1",
        "severity": "low",
        "relatedDetailsUrl": "https://ti.defender.microsoft.com/search?query=192.168.1.1"
      }
  ]
}
```
