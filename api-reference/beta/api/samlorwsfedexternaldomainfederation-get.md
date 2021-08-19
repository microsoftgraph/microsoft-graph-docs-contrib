---
title: "Get samlOrWsFedExternalDomainFederation"
description: "Read the properties and relationships of a samlOrWsFedExternalDomainFederation object."
author: "namkedia"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get samlOrWsFedExternalDomainFederation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

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
GET /samlOrWsFedExternalDomainFederation
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

If successful, this method returns a `200 OK` response code and a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_samlorwsfedexternaldomainfederation"
}
-->
``` http
GET https://graph.microsoft.com/beta/samlOrWsFedExternalDomainFederation
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.samlOrWsFedExternalDomainFederation",
    "id": "d5a56845-6845-d5a5-4568-a5d54568a5d5",
    "displayName": "String",
    "issuerUri": "String",
    "metadataExchangeUri": "String",
    "signingCertificate": "String",
    "passiveSignInUri": "String",
    "preferredAuthenticationProtocol": "String"
  }
}
```

