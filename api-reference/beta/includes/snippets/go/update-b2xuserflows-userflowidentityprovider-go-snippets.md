---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.New$refPatchRequestBody()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/identity/identityProviders/B2X_1_Test", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2xUserFlowsById("b2xIdentityUserFlow-id").UserFlowIdentityProviders().Ref().Patch(context.Background(), requestBody, nil)


```