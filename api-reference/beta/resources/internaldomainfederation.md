---
title: "internalDomainFederation resource type"
description: "Represents configurations of the domains in a tenant that are federated with Azure AD."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# internalDomainFederation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configurations of the domains in a tenant that are federated and verified with Azure AD. Use this resource to configure federation settings when setting up federation with Azure AD. For information on federation, see [What is federation with Azure AD?](/azure/active-directory/hybrid/whatis-fed).


Inherits from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create internalDomainFederation](../api/domain-post-federationconfiguration.md)|[internalDomainFederation](../resources/internaldomainfederation.md)|Create a new [internalDomainFederation](../resources/internaldomainfederation.md) object.|
|[Get internalDomainFederation](../api/internaldomainfederation-get.md)|[internalDomainFederation](../resources/internaldomainfederation.md)|Read the properties and relationships of an [internalDomainFederation](../resources/internaldomainfederation.md) object.|
|[Update internalDomainFederation](../api/internaldomainfederation-update.md)|[internalDomainFederation](../resources/internaldomainfederation.md)|Update the properties of an [internalDomainFederation](../resources/internaldomainfederation.md) object.|
|[Delete internalDomainFederation](../api/internaldomainfederation-delete.md)|None|Delete an [internalDomainFederation](../resources/internaldomainfederation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeSignInUri|String|URL of the endpoint used by active clients when authenticating with federated domains set up for single sign-on in Azure Active Directory (Azure AD). Corresponds to the **ActiveLogOnUri** property of the [Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet](/powershell/module/msonline/set-msoldomainfederationsettings).|
|displayName|String|The display name of the federated identity Provider (IdP). Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|federatedIdpMfaBehavior|federatedIdpMfaBehavior|Determines whether Azure AD accepts the MFA performed by the federated IdP when a federated user accesses an application that is governed by a conditional access policy that requires MFA. The possible values are: `acceptIfMfaDoneByFederatedIdp`, `enforceMfaByFederatedIdp`, `rejectMfaByFederatedIdp`, `unknownFutureValue`. For more information, see [federatedIdpMfaBehavior values](#federatedidpmfabehavior-values).|
|id|String|The identifier of the federated identity provider. Inherited from [entity](../resources/entity.md).|
|isSignedAuthenticationRequestRequired|Boolean|If `true`, when SAML authentication requests are sent to the federated SAML IdP, Azure AD will sign those requests using the OrgID signing key. If `false` (default), the SAML authentication requests sent to the federated IdP are not signed.|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|nextSigningCertificate|String|Fallback token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base64 encoded strings of the public portion of the federated IdP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the signingCertificate, the nextSigningCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.|
|passiveSignInUri|String|URI that web-based clients are directed to when signing into Azure AD services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|authenticationProtocol|Preferred authentication protocol. The possible values are: `wsFed`, `saml`, `unknownFutureValue`. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|promptLoginBehavior|promptLoginBehavior|Sets the preferred behavior for the sign-in prompt. The possible values are: `translateToFreshPasswordAuthentication`, `nativeSupport`, `disabled`, `unknownFutureValue`.|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class. <br>This property is used in the following scenarios: <li> If a rollover is required outside of the autorollover update <li> A new federation service is being set up <li> If the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.<br>Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificateUpdateStatus|[signingCertificateUpdateStatus](../resources/signingcertificateupdatestatus.md)|Provides status and timestamp of the last update of the signing certificate.|
|signOutUri|String|URI that clients are redirected to when they sign out of Azure AD services. Corresponds to the **LogOffUri** property of the [Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet](/powershell/module/msonline/set-msoldomainfederationsettings).|

### federatedIdpMfaBehavior values

| Member | Description |
| :--- | :--- |
| acceptIfMfaDoneByFederatedIdp | Azure AD accepts MFA that's performed by the federated identity provider. If the federated identity provider didn't perform MFA, Azure AD performs the MFA. |
| enforceMfaByFederatedIdp | Azure AD accepts MFA that's performed by federated identity provider. If the federated identity provider didn't perform MFA, it redirects the request to federated identity provider to perform MFA. |
| rejectMfaByFederatedIdp | Azure AD always performs MFA and rejects MFA that's performed by the federated identity provider. |

**Note:** **federatedIdpMfaBehavior** is an evolved version of the **SupportsMfa** property of the [Set-MsolDomainFederationSettings MSOnline v1 PowerShell cmdlet](/powershell/module/msonline/set-msoldomainfederationsettings). 
+ Switching between **federatedIdpMfaBehavior** and **SupportsMfa** is not supported.
+ Once **federatedIdpMfaBehavior** property is set, Azure AD ignores the **SupportsMfa** setting.
+ If the **federatedIdpMfaBehavior** property is never set, Azure AD will continue to honor the **SupportsMfa** setting.
+ If neither **federatedIdpMfaBehavior** nor **SupportsMfa** is set, Azure AD will default to `acceptIfMfaDoneByFederatedIdp` behavior.

## Relationships

None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.internalDomainFederation",
  "baseType": "microsoft.graph.samlOrWsFedProvider",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.internalDomainFederation",
  "id": "String (identifier)",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String",
  "activeSignInUri": "String",
  "signOutUri": "String",
  "promptLoginBehavior": "String",
  "isSignedAuthenticationRequestRequired": "Boolean",
  "nextSigningCertificate": "String",
  "signingCertificateUpdateStatus": {
    "certificateUpdateResult": "String",
    "@odata.type": "microsoft.graph.signingCertificateUpdateStatus"
  },
  "federatedIdpMfaBehavior": "String"
}
```

