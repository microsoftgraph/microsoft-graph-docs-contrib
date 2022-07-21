---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Authorization": "Bearer <token>",
}
configuration := &graphconfig.SynchronizationTemplateRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTemplate()
additionalData := map[string]interface{}{
	"id" : "Slack", 
	"applicationId" : "{id}", 
	"factoryTag" : "CustomSCIM", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.ApplicationsById("application-id").Synchronization().TemplatesById("synchronizationTemplate-id").PutWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```