---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Directory/FederationConfigurations/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

graphClient.Directory().FederationConfigurationsById("identityProviderBase-id").Post(context.Background(), requestBody, nil)


```