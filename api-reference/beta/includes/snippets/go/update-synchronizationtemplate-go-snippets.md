---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"id": "Slack",
	"applicationId": "{id}",
	"factoryTag": "CustomSCIM",
}
headers := map[string]string{
	"Authorization": "Bearer <token>"
}
options := &msgraphsdk.SynchronizationTemplateRequestBuilderPutOptions{
	Body: requestBody,
	H: headers,
}
applicationId := "application-id"
synchronizationTemplateId := "synchronizationTemplate-id"
graphClient.ApplicationsById(&applicationId).Synchronization().TemplatesById(&synchronizationTemplateId).Put(options);


```