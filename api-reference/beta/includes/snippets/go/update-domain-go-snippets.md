---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDomain()
isDefault := true
requestBody.SetIsDefault(&isDefault) 
supportedServices := []string {
	"Email",
	"OfficeCommunicationsOnline",

}
requestBody.SetSupportedServices(supportedServices)

result, err := graphClient.DomainsById("domain-id").Patch(context.Background(), requestBody, nil)


```