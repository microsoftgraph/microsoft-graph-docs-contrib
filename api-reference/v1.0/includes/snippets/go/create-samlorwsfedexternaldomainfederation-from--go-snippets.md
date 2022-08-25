---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewFederationConfiguration()
additionalData := map[string]interface{}{
	"issuerUri" : "https://contoso.com/issuerUri", 
	"displayName" : "contoso display name", 
	"metadataExchangeUri" : "https://contoso.com/metadataExchangeUri", 
	"passiveSignInUri" : "https://contoso.com/signin", 
	"preferredAuthenticationProtocol" : "wsFed", 


 := graphmodels.New()
id := "contoso.com"
.SetId(&id) 

	domains := []graphmodels.Objectable {
		,

	}
	"signingCertificate" : "MIIDADCCAeigAwIBAgIQEX41y8r6", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Directory().FederationConfigurationsById("identityProviderBase-id").Post(requestBody)


```