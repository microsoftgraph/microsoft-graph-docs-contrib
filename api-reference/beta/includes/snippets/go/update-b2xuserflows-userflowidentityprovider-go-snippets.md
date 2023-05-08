---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Identity/B2xUserFlows/Item/UserFlowIdentityProviders/Ref"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.New$refPatchRequestBody()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2xUserFlows().ByB2xUserFlowId("b2xIdentityUserFlow-id").UserFlowIdentityProviders().Ref().Patch(context.Background(), requestBody, nil)


```