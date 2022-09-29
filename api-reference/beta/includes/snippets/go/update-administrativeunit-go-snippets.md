---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAdministrativeUnit()
additionalData := map[string]interface{}{
	"membershipType" : "Dynamic", 
	"membershipRule" : "(user.country -eq \"United States\")", 
	"membershipRuleProcessingState" : "On", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.AdministrativeUnitsById("administrativeUnit-id").Patch(context.Background(), requestBody, nil)


```