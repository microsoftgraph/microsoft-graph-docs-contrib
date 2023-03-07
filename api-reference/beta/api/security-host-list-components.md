---
title: "List components"
description: "Get the hostComponent resources from the components navigation property."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List components
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [hostComponent](../resources/security-hostcomponent.md) resources from the components navigation property.

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
GET /security/threatIntelligence/hosts/{hostId}/components
```

## Optional query parameters
This method supports the `$count`, `$select`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [hostComponent](../resources/security-hostcomponent.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_hostcomponent"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/contoso.com/components
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.hostComponent)"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.hostComponent",
      "id": "TWljcm9zb2Z0LUlJUyQkMTAuMCQkU2VydmVyJCRjMS5taWNyb3NvZnQuY29t",
      "firstSeenDateTime": "2023-02-28T00:00:19.644Z",
      "lastSeenDateTime": "2023-03-06T23:58:55.615Z",
      "name": "Microsoft-IIS",
      "version": "10.0",
      "category": "Server",
      "host": {
          "id": "c1.microsoft.com"
      }
    }
  ]
}
```

