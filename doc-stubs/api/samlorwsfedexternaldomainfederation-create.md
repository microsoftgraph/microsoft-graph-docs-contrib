---
title: "Create samlOrWsFedExternalDomainFederation"
description: "Create a new samlOrWsFedExternalDomainFederation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create samlOrWsFedExternalDomainFederation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

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
POST ** Collection URI for Microsoft.DirectoryServices.samlOrWsFedExternalDomainFederation not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.

The following table shows the properties that are required when you create the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [identityProviderBase](../resources/identityproviderbase.md)|
|displayName|String|**TODO: Add Description** Inherited from [identityProviderBase](../resources/identityproviderbase.md)|
|issuerUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|metadataExchangeUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|signingCertificate|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|passiveSignInUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|
|preferredAuthenticationProtocol|authenticationProtocol|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md). The possible values are: `wsFed`, `saml`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_samlorwsfedexternaldomainfederation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.DirectoryServices.samlOrWsFedExternalDomainFederation not found
Content-Type: application/json
Content-length: 295

{
  "@odata.type": "#Microsoft.DirectoryServices.samlOrWsFedExternalDomainFederation",
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
  "truncated": true,
  "@odata.type": "Microsoft.DirectoryServices.samlOrWsFedExternalDomainFederation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#Microsoft.DirectoryServices.samlOrWsFedExternalDomainFederation",
  "id": "2d3870a3-70a3-2d38-a370-382da370382d",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String"
}
```

