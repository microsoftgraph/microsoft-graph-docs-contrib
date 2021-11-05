---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetCredentials( []SynchronizationSecretKeyStringValuePair {
	msgraphsdk.NewSynchronizationSecretKeyStringValuePair(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair",
	}
}
options := &msgraphsdk.AcquireAccessTokenRequestBuilderPostOptions{
	Body: requestBody,
}
applicationId := "application-id"
graphClient.ApplicationsById(&applicationId).Synchronization().AcquireAccessToken().Post(options);


```