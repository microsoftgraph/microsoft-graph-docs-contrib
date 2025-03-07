---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewInternalDomainFederation()
displayName := "Contoso"
requestBody.SetDisplayName(&displayName) 
issuerUri := "http://contoso.com/adfs/services/trust"
requestBody.SetIssuerUri(&issuerUri) 
metadataExchangeUri := "https://sts.contoso.com/adfs/services/trust/mex"
requestBody.SetMetadataExchangeUri(&metadataExchangeUri) 
signingCertificate := "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
requestBody.SetSigningCertificate(&signingCertificate) 
passiveSignInUri := "https://sts.contoso.com/adfs/ls"
requestBody.SetPassiveSignInUri(&passiveSignInUri) 
preferredAuthenticationProtocol := graphmodels.WSFED_AUTHENTICATIONPROTOCOL 
requestBody.SetPreferredAuthenticationProtocol(&preferredAuthenticationProtocol) 
activeSignInUri := "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed"
requestBody.SetActiveSignInUri(&activeSignInUri) 
signOutUri := "https://sts.contoso.com/adfs/ls"
requestBody.SetSignOutUri(&signOutUri) 
promptLoginBehavior := graphmodels.NATIVESUPPORT_PROMPTLOGINBEHAVIOR 
requestBody.SetPromptLoginBehavior(&promptLoginBehavior) 
isSignedAuthenticationRequestRequired := true
requestBody.SetIsSignedAuthenticationRequestRequired(&isSignedAuthenticationRequestRequired) 
nextSigningCertificate := "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
requestBody.SetNextSigningCertificate(&nextSigningCertificate) 
federatedIdpMfaBehavior := graphmodels.REJECTMFABYFEDERATEDIDP_FEDERATEDIDPMFABEHAVIOR 
requestBody.SetFederatedIdpMfaBehavior(&federatedIdpMfaBehavior) 
passwordResetUri := "https://sts.contoso.com/adfs/passwordReset"
requestBody.SetPasswordResetUri(&passwordResetUri) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
federationConfiguration, err := graphClient.Domains().ByDomainId("domain-id").FederationConfiguration().Post(context.Background(), requestBody, nil)


```