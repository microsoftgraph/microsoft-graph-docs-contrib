---
title: "Create federationConfiguration"
description: "Create a new internalDomainFederation object."
author: "akgoel23"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create federationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [internalDomainFederation](../resources/internaldomainfederation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Domain.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Domain.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /domains/{domainsId}/federationConfiguration
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [internalDomainFederation](../resources/internaldomainfederation.md) object.

You can specify the following properties when creating an **internalDomainFederation**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the identity Provider. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class. <br>This property is used in the following scenarios: <br> - if a rollover is required outside of the autorollover update <br> - a new federation service is being set up <br> - if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.<br>Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Azure AD services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|authenticationProtocol|Preferred authentication protocol. The possible values are: `wsFed`, `saml`. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|activeSignInUri|String|URL of the end point used by active clients when authenticating with domains set up for single sign-on in Azure Active Directory (Azure AD). Referred to as ActiveLogOnUri in MSOnline PowerShell cmdlets.|
|signOutUri|String|URI that clients are redirected to when they sign out of Azure AD services. Referred to as LogOffUri in MSOnline PowerShell cmdlets. Optional.|
|promptLoginBehavior|promptLoginBehavior|Sets the preferred behavior for the sign in prompt. This value can set fresh authentication and authentication method and the prompt=login field to the IDP to display a UI for authentication. The possible values are: `translateToFreshPasswordAuthentication`, `nativeSupport`, `disabled`. Optional.|
|isSignedAuthenticationRequestRequired|Boolean|If true, when SAML authentication requests are sent to the federated SAML IDP, Azure AD will sign those requests using the OrgID signing key. If false (default), the SAML authentication requests sent to the federated IDP are not signed.|
|nextSigningCertificate|String|Next token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base64 encoded strings of the public portion of the federated IDP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the signingCertificate, the nextSigningCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.|
|signingCertificateUpdateStatus|[signingCertificateUpdateStatus](../resources/signingcertificateupdatestatus.md)|Provides status and timestamp of the last update of the signing certificate.|
|federatedIdpMfaBehavior|federatedIdpMfaBehavior|Determines whether Azure AD accepts the MFA performed by the identity provider or performs Azure MFA when a federated user accesses an application for which a Conditional Access policy that requires MFA has been configured The possible values are: <br> `acceptIfMfaDoneByFederatedIdp`: Azure AD accepts MFA if performed by identity provider. If not, performs Azure MFA. <br> `enforceMfaByFederatedIdp`: Azure AD accepts MFA if performed by identity provider. If not, it redirects request to identity provider to perform MFA. <br> `rejectMfaByFederatedIdp`: Azure AD always performs Azure MFA and rejects MFA if performed by identity provider. <br>**Note**<br> `federatedIdpMfaBehavior` is an evolved version of [`SupportsMfa`](/powershell/module/msonline/set-msoldomainfederationsettings) property (supported by MSOnline V1 PowerShell module). Switching between `federatedIdpMfaBehavior` and `SupportsMfa` is not supported. Once `federatedIdpMfaBehavior` property is set, Azure AD ignores the `SupportsMfa` setting. If the `federatedIdpMfaBehavior` property is never set, Azure AD will continue to honor the `SupportsMfa` setting. If neither `federatedIdpMfaBehavior` nor `SupportsMfa` is set, Azure AD by default will accept MFA performed by identity provider and if not, will perform Azure MFA.|



## Response

If successful, this method returns a `201 Created` response code and an [internalDomainFederation](../resources/internaldomainfederation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_internaldomainfederation_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/domains/contoso.com/federationConfiguration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.internalDomainFederation",
  "displayName": "Contoso",
  "issuerUri": "http://contoso.com/adfs/services/trust",
  "metadataExchangeUri": "https://sts.contoso.com/adfs/services/trust/mex",
  "signingCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
  "passiveSignInUri": "https://sts.contoso.com/adfs/ls",
  "preferredAuthenticationProtocol": "wsFed",
  "activeSignInUri": "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",
  "signOutUri": "https://sts.contoso.com/adfs/ls",
  "promptLoginBehavior": "nativeSupport",
  "isSignedAuthenticationRequestRequired": true,
  "nextSigningCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
  "federatedIdpMfaBehavior": "rejectMfaByFederatedIdp"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.internalDomainFederation"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.internalDomainFederation",
  "id": "6601d14b-d113-8f64-fda2-9b5ddda18ecc",
   "displayName": "Contoso",
   "issuerUri": "http://contoso.com/adfs/services/trust",
   "metadataExchangeUri": "https://sts.contoso.com/adfs/services/trust/mex",
   "signingCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
   "passiveSignInUri": "https://sts.contoso.com/adfs/ls",
   "preferredAuthenticationProtocol": "wsFed",
   "activeSignInUri": "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",
   "signOutUri": "https://sts.contoso.com/adfs/ls",
   "promptLoginBehavior": "nativeSupport",
   "isSignedAuthenticationRequestRequired": true,
   "nextSigningCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
   "signingCertificateUpdateStatus": {
        "certificateUpdateResult": "Success",
        "lastRunDateTime": "2021-08-25T07:44:46.2616778Z"
    },
   "federatedIdpMfaBehavior": "rejectMfaByFederatedIdp"
}
```

