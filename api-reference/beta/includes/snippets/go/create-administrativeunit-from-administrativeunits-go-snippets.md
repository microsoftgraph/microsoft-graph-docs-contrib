---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAdministrativeUnit()
displayName := "Seattle District Technical Schools"
requestBody.SetDisplayName(&displayName) 
description := "Seattle district technical schools administration"
requestBody.SetDescription(&description) 
additionalData := map[string]interface{}{
	"membershipType" : "Dynamic", 
	"membershipRule" : "(user.country -eq \"United States\")", 
	"membershipRuleProcessingState" : "On", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.AdministrativeUnits().Post(requestBody)


```