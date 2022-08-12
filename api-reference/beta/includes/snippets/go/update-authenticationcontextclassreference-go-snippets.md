---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAuthenticationContextClassReference()
additionalData := map[string]interface{}{


 := graphmodels.New()
displayName := "Contoso trusted locations"
.SetDisplayName(&displayName) 
description := "Access is only allowed from trusted locations"
.SetDescription(&description) 
isAvailable := true
.SetIsAvailable(&isAvailable) 

	value := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferencesById("authenticationContextClassReference-id").Patch(requestBody)


```