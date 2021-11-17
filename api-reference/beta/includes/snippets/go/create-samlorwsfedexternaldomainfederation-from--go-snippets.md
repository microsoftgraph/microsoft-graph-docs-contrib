---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewIdentityProviderBase()
displayName := "contoso display name"
requestBody.SetDisplayName(&displayName)
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation",
	"issuerUri": "https://contoso.com/issuerUri",
	"metadataExchangeUri": "https://contoso.com/metadataExchangeUri",
	"passiveSignInUri": "https://contoso.com/signin",
	"preferredAuthenticationProtocol": "wsFed",
	"domains":  []Object {
	}
	"signingCertificate": "MIIDADCCAeigAwIBAgIQEX41y8r6",
}
options := &msgraphsdk.FederationConfigurationsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Directory().FederationConfigurations().Post(options)


```