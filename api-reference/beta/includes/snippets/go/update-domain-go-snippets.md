---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewDomain()
isDefault := true
requestBody.SetIsDefault(&isDefault)
requestBody.SetSupportedServices( []String {
	"Email",
	"OfficeCommunicationsOnline",
}
domainId := "domain-id"
graphClient.DomainsById(&domainId).Patch(requestBody)


```