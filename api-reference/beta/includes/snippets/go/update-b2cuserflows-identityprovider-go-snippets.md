---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReferenceCreate()
odataId := "https://graph.microsoft.com/beta/identityProviders/{id}"
requestBody.SetOdataId(&odataId) 

graphClient.Identity().B2cUserFlowsById("b2cIdentityUserFlow-id").IdentityProviders().Ref().Post(context.Background(), requestBody, nil)


```