---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewB2cIdentityUserFlow()
isLanguageCustomizationEnabled := true
requestBody.SetIsLanguageCustomizationEnabled(&isLanguageCustomizationEnabled) 
defaultLanguageTag := "en"
requestBody.SetDefaultLanguageTag(&defaultLanguageTag) 

graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").Patch(requestBody)


```