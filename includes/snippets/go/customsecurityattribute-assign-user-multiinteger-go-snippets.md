---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUser()
customSecurityAttributes := graphmodels.NewCustomSecurityAttributeValue()
additionalData := map[string]interface{}{
engineering := graphmodels.New()
"costCenter@odata.type" := "#Collection(Int32)"
engineering.Set"costCenter@odata.type"(&"costCenter@odata.type") 
	costCenter := []graphmodels.Numberable {
 := int32(1001)
engineering.Set(&) 
 := int32(1003)
engineering.Set(&) 

	}
	engineering.SetCostCenter(costCenter)
	customSecurityAttributes.SetEngineering(engineering)
}
customSecurityAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomSecurityAttributes(customSecurityAttributes)

result, err := graphClient.UsersById("user-id").Patch(context.Background(), requestBody, nil)


```