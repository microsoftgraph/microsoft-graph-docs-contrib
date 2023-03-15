---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAcquireAccessTokenPostRequestBody()


synchronizationSecretKeyStringValuePair := graphmodels.NewSynchronizationSecretKeyStringValuePair()

credentials := []graphmodels.SynchronizationSecretKeyStringValuePairable {
	synchronizationSecretKeyStringValuePair,

}
requestBody.SetCredentials(credentials)

graphClient.ApplicationsById("application-id").Synchronization().AcquireAccessToken().Post(context.Background(), requestBody, nil)


```