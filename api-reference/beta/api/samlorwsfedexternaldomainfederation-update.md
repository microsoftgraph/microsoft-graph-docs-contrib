---
title: "Update samlOrWsFedExternalDomainFederation"
description: "Update the properties of a samlOrWsFedExternalDomainFederation object."
author: "namkedia"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update samlOrWsFedExternalDomainFederation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

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
PATCH /samlOrWsFedExternalDomainFederation
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

The following table shows the properties that are required when you update the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|displayName|String|**TODO: Add Description** Inherited from [identityProviderBase](../resources/identityproviderbase.md)|
|issuerUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|metadataExchangeUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|signingCertificate|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|passiveSignInUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|preferredAuthenticationProtocol|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|



## Response

If successful, this method returns a `200 OK` response code and an updated [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_samlorwsfedexternaldomainfederation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/samlOrWsFedExternalDomainFederation
Content-Type: application/json
Content-length: 283

{
  "@odata.type": "#microsoft.graph.samlOrWsFedExternalDomainFederation",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.samlOrWsFedExternalDomainFederation",
  "id": "d5a56845-6845-d5a5-4568-a5d54568a5d5",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String"
}
```

