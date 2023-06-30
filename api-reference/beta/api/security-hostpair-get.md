---
title: "Get hostPair"
description: "Read the properties and relationships of a microsoft.graph.security.hostPair object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get hostPair
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.security.hostPair](../resources/security-hostpair.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/hostPairs/{hostPairId}
GET /security/threatIntelligence/hosts/{hostId}/hostPairs/{hostPairId}
GET /security/threatIntelligence/hosts/{hostId}/childHostPairs/{hostPairId}
GET /security/threatIntelligence/hosts/{hostId}/parentHostPairs/{hostPairId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.hostPair](../resources/security-hostpair.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_hostpair"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hostPairs/{hostPairId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.hostPair"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.hostPair",
    "id": "5c1e7170-0621-8ddd-fc2e-4ea27407faa9",
    "firstSeenDateTime": "String (timestamp)",
    "lastSeenDateTime": "String (timestamp)",
    "linkKind": "String"
  }
}
```

