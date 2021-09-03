---
title: "samlOrWsFedProvider resource type"
description: "Configuration details for setting up a SAML or WS-Fed based identity provider."
author: "namkedia"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# samlOrWsFedProvider resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that provides configuration details for setting up a SAML or WS-Fed external domain-based identity provider (IdP).

Inherits from [identityProviderBase](../resources/identityproviderbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the SAML/WS-Fed based identity provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [entity](../resources/entity.md).|
|issuerUri|String|Issuer URI of the federation server.|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications.|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Azure Active Directory (Azure AD) services.|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications.|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Azure AD services.|
|preferredAuthenticationProtocol|String|Preferred authentication protocol. Supported values include `saml` or `wsfed`.|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.  <br/><br/> This property is used in the following scenarios: <ul><li> if a rollover is required outside of the autorollover update <li>a new federation service is being set up <li> if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated. </ul> <br/><br/> Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available.|

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
