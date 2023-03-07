---
title: "Get passiveDnsRecord"
description: "Read the properties and relationships of a microsoft.graph.security.passiveDnsRecord object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get passiveDnsRecord
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [microsoft.graph.security.passiveDnsRecord](../resources/security-passiveDnsRecord.md) object.

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
GET /security/threatIntelligence/passiveDnsRecord/{passiveDnsRecordId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.passiveDns](../resources/security-passivedns.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_passivedns"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/passiveDns/{passiveDnsId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.passiveDns"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.passiveDns",
    "id": "6c559be2-93a3-bc87-bf89-2b8858d18c59",
    "firstSeenDateTime": "String (timestamp)",
    "lastSeenDateTime": "String (timestamp)",
    "collectedDateTime": "String (timestamp)",
    "recordType": "String"
  }
}
```

