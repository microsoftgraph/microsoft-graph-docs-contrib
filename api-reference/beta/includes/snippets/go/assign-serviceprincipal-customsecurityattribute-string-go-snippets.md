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
"@odata.type" := "#Microsoft.DirectoryServices.CustomSecurityAttributeValue"
engineering.Set"@odata.type"(&"@odata.type") 
projectDate := "2022-10-01"
engineering.SetProjectDate(&projectDate) 
	customSecurityAttributes.SetEngineering(engineering)
}
customSecurityAttributes.SetAdditionalData(additionalData)
requestBody.SetCustomSecurityAttributes(customSecurityAttributes)

graphClient.ServicePrincipalsById("servicePrincipal-id").Patch(requestBody)


```