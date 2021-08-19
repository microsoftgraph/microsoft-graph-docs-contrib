---
title: "samlOrWsFedProvider resource type"
description: "Configuration details for setting up a SAML or Ws-Fed based identity provider."
author: "namkedia"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# samlOrWsFedProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration details for setting up a SAML or Ws-Fed based identity provider.

This is an abstract type.

Inherits from [identityProviderBase](../resources/identityproviderbase.md).

## Methods
<!-- 
|Method|Return type|Description|

|:---|:---|:---|
|[List samlOrWsFedProviders](../api/samlorwsfedprovider-list.md)|[samlOrWsFedProvider](../resources/samlorwsfedprovider.md) collection|Get a list of the [samlOrWsFedProvider](../resources/samlorwsfedprovider.md) objects and their properties.|
|[Create samlOrWsFedProvider](../api/samlorwsfedprovider-create.md)|[samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|Create a new [samlOrWsFedProvider](../resources/samlorwsfedprovider.md) object.|
|[Get samlOrWsFedProvider](../api/samlorwsfedprovider-get.md)|[samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|Read the properties and relationships of a [samlOrWsFedProvider](../resources/samlorwsfedprovider.md) object.|
|[Update samlOrWsFedProvider](../api/samlorwsfedprovider-update.md)|[samlOrWsFedProvider](../resources/samlorwsfedprovider.md)|Update the properties of a [samlOrWsFedProvider](../resources/samlorwsfedprovider.md) object.|
|[Delete samlOrWsFedProvider](../api/samlorwsfedprovider-delete.md)|None|Deletes a [samlOrWsFedProvider](../resources/samlorwsfedprovider.md) object.|
-->
## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the SAML/Ws-Fed based identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [entity](../resources/entity.md).|
|issuerUri|String|Issuer URI of the federation server.|
|metadataExchangeUri|String|URI of the metadata exchange end point used for authentication from rich client applications.|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to AAD services.|
|preferredAuthenticationProtocol|String|Preferred authentication protocol. Supported values include `saml` or `wsfed`.|
|signingCertificate|String|Current certificate used to sign tokens passed to the AAD Identity platform. Formatted as Base64 encoded strings of the public portion of the federated IDP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Usually, certificates are updated via an auto-rollover process; AAD attempts to retrieve a new certificate from the federation service metadata 30 days before expiry of the current certificate. If a new certificate is not available at the time, AAD will continue to monitor the metadata daily and will update the federation settings for the domain when a new certificate is available. The signingCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.samlOrWsFedProvider",
  "baseType": "microsoft.graph.identityProviderBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.samlOrWsFedProvider",
  "id": "String (identifier)",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String"
}
```
