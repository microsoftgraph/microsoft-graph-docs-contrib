---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewLanguage()
additionalData := map[string]interface{}{
	"id" : "es-ES", 
	isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").LanguagesById("userFlowLanguageConfiguration-id").Put(context.Background(), requestBody, nil)


```