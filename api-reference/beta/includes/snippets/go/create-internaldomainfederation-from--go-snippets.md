---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewInternalDomainFederation()
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
preferredAuthenticationProtocol := "wsFed"
requestBody.SetPreferredAuthenticationProtocol(&preferredAuthenticationProtocol)
activeSignInUri := "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed"
requestBody.SetActiveSignInUri(&activeSignInUri)
signOutUri := "https://sts.contoso.com/adfs/ls"
requestBody.SetSignOutUri(&signOutUri)
promptLoginBehavior := "nativeSupport"
requestBody.SetPromptLoginBehavior(&promptLoginBehavior)
isSignedAuthenticationRequestRequired := true
requestBody.SetIsSignedAuthenticationRequestRequired(&isSignedAuthenticationRequestRequired)
nextSigningCertificate := "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI"
requestBody.SetNextSigningCertificate(&nextSigningCertificate)
federatedIdpMfaBehavior := "rejectMfaByFederatedIdp"
requestBody.SetFederatedIdpMfaBehavior(&federatedIdpMfaBehavior)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "#microsoft.graph.internalDomainFederation",
}
options := &msgraphsdk.FederationConfigurationRequestBuilderPostOptions{
	Body: requestBody,
}
domainId := "domain-id"
result, err := graphClient.DomainsById(&domainId).FederationConfiguration().Post(options)


```