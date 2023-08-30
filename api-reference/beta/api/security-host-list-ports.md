---
title: "List ports"
description: "Get the hostPort resources from the ports navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List ports
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the hostPort resources from the ports navigation property.

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
GET /security/threatIntelligence/hosts/{hostId}/ports
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

If successful, this method returns a `200 OK` response code and a collection of [hostPort](../resources/hostport.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_hostport"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/{hostId}/ports
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.hostPort)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.hostPort",
      "id": "f76784d3-ca56-d0a4-c89f-0b54e4e79511",
      "port": "Integer",
      "firstSeenDateTime": "String (timestamp)",
      "lastSeenDateTime": "String (timestamp)",
      "lastScanDateTime": "String (timestamp)",
      "timesObserved": "Integer",
      "status": "String",
      "protocol": "String",
      "banners": [
        {
          "@odata.type": "microsoft.graph.security.hostPortBanner"
        }
      ],
      "services": [
        {
          "@odata.type": "microsoft.graph.security.hostPortComponent"
        }
      ]
    }
  ]
}
```

