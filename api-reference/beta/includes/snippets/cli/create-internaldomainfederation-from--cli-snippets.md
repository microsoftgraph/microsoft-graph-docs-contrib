---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta domains federation-configuration create --domain-id {domain-id} --body '{\
  "@odata.type": "#microsoft.graph.internalDomainFederation",\
  "displayName": "Contoso",\
  "issuerUri": "http://contoso.com/adfs/services/trust",\
  "metadataExchangeUri": "https://sts.contoso.com/adfs/services/trust/mex",\
  "signingCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",\
  "passiveSignInUri": "https://sts.contoso.com/adfs/ls",\
  "preferredAuthenticationProtocol": "wsFed",\
  "activeSignInUri": "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",\
  "signOutUri": "https://sts.contoso.com/adfs/ls",\
  "promptLoginBehavior": "nativeSupport",\
  "isSignedAuthenticationRequestRequired": true,\
  "nextSigningCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",\
  "federatedIdpMfaBehavior": "rejectMfaByFederatedIdp"\
}\
'

```