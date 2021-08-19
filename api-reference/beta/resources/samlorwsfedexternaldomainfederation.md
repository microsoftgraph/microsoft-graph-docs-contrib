---
title: "samlOrWsFedExternalDomainFederation resource type"
description: "Represents SAML/Ws-Fed federation set up with an Azure AD tenant"
author: "namkedia"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# samlOrWsFedExternalDomainFederation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents [SAML/Ws-Fed federation](/azure/active-directory/external-identities/direct-federation) set up with an Azure AD tenant to allow guest users to access its resources.

Inherits from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List samlOrWsFedExternalDomainFederations](../api/samlorwsfedexternaldomainfederation-list.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) collection|Get a list of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) objects and their properties.|
|[Create samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-create.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Create a new [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Get samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-get.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Update samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-update.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Update the properties of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Delete samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-delete.md)|None|Deletes a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[List domains](../api/samlorwsfedexternaldomainfederation-list-domains.md)|[externalDomainName](../resources/externaldomainname.md) collection|Get the externalDomainName resources from the domains navigation property.|
|[Create externalDomainName](../api/samlorwsfedexternaldomainfederation-post-domains.md)|[externalDomainName](../resources/externaldomainname.md)|Create a new externalDomainName object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the SAML/Ws-Fed based identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [entity](../resources/entity.md).|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange end point used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to AAD services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|String|Preferred authentication protocol. Supported values include `saml` or `wsfed`. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificate|String|Current certificate used to sign tokens passed to the AAD Identity platform. Formatted as Base64 encoded strings of the public portion of the federated IDP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Usually, certificates are updated via an auto-rollover process; AAD attempts to retrieve a new certificate from the federation service metadata 30 days before expiry of the current certificate. If a new certificate is not available at the time, AAD will continue to monitor the metadata daily and will update the federation settings for the domain when a new certificate is available. The signingCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|domains|[externalDomainName](../resources/externaldomainname.md) collection|Collection of name of the external organziations domain you are federating with.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation",
  "baseType": "microsoft.graph.samlOrWsFedProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.samlOrWsFedExternalDomainFederation",
  "id": "String (identifier)",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String"
}
```
