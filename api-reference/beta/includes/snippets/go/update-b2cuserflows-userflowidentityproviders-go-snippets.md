---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Identity/B2cUserFlows/Item/UserFlowIdentityProviders/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUserFlowIdentityProvider()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/identity/identityProviders/{id}", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").UserFlowIdentityProvidersById("identityProviderBase-id").Patch(context.Background(), requestBody, nil)


```