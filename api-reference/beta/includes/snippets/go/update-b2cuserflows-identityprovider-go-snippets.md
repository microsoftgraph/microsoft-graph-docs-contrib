---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/identityProviders/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").IdentityProviders().$ref().Post(requestBody)


```