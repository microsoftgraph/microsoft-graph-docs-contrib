---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewResourceConnection()
additionalData := map[string]interface{}{
	"azureSubscriptionId" : "322ec614-e9c2-4cd5-a55c-5711fdecf02e", 
	"azureResourceGroupName" : "target-resource-group", 
	"workspaceName" : "my-workspace", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Admin().Windows().Updates().ResourceConnections().Post(requestBody)


```