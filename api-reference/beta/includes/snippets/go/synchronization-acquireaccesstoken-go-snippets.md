---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAcquireAccessTokenPostRequestBody()


synchronizationSecretKeyStringValuePair := graphmodels.NewSynchronizationSecretKeyStringValuePair()
"@odata.type" := "microsoft.graph.synchronizationSecretKeyStringValuePair"
synchronizationSecretKeyStringValuePair.Set"@odata.type"(&"@odata.type") 

credentials := []graphmodels.SynchronizationSecretKeyStringValuePairable {
	synchronizationSecretKeyStringValuePair,

}
requestBody.SetCredentials(credentials)

graphClient.ApplicationsById("application-id").Synchronization().AcquireAccessToken().Post(requestBody)


```