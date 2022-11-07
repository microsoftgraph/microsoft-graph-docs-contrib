---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewServicePrincipal()
customSecurityAttributes := graphmodels.NewCustomSecurityAttributeValue()
additionalData := map[string]interface{}{
engineering := graphmodels.New()
projectDate := "2022-10-01"
engineering.SetProjectDate(&projectDate) 
	customSecurityAttributes.SetEngineering(engineering)
}
customSecurityAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomSecurityAttributes(customSecurityAttributes)

result, err := graphClient.ServicePrincipalsById("servicePrincipal-id").Patch(context.Background(), requestBody, nil)


```