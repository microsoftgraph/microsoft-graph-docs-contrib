---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewUpdateAdDomainPasswordPostRequestBody()
adDomainPassword := "AdDomainPassword value"
requestBody.SetAdDomainPassword(&adDomainPassword) 

graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnectionsById("cloudPcOnPremisesConnection-id").UpdateAdDomainPassword().Post(context.Background(), requestBody, nil)


```