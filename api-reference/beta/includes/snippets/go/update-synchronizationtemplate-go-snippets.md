---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer <token>")

configuration := &graphconfig.ApplicationItemSynchronizationTemplateItemRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTemplate()
additionalData := map[string]interface{}{
	"id" : "Slack", 
	"applicationId" : "{id}", 
	"factoryTag" : "CustomSCIM", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ApplicationsById("application-id").Synchronization().TemplatesById("synchronizationTemplate-id").Put(context.Background(), requestBody, configuration)


```