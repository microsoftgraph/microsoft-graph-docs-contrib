---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationContextClassReference()
id := "c1"
requestBody.SetId(&id) 
displayName := "Contoso medium"
requestBody.SetDisplayName(&displayName) 
description := "Medium protection level defined for Contoso policy"
requestBody.SetDescription(&description) 
isAvailable := true
requestBody.SetIsAvailable(&isAvailable) 

graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferencesById("authenticationContextClassReference-id").Patch(context.Background(), requestBody, nil)


```