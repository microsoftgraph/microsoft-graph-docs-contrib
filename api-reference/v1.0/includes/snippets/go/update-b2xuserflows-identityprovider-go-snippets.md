---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Identity/B2xUserFlows/Item/IdentityProviders/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewIdentityProvider()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/v1.0/identityProviders/Facebook-OAUTH", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2xUserFlows().ByB2xUserFlowId("b2xIdentityUserFlow-id").IdentityProviders().ByIdentityProviderId("identityProvider-id").Post(context.Background(), requestBody, nil)


```