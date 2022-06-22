---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAdDomainPasswordRequestBody()
adDomainPassword := "AdDomainPassword value"
requestBody.SetAdDomainPassword(&adDomainPassword)
cloudPcOnPremisesConnectionId := "cloudPcOnPremisesConnection-id"
graphClient.DeviceManagement().VirtualEndpoint().OnPremisesConnectionsById(&cloudPcOnPremisesConnectionId).UpdateAdDomainPassword(cloudPcOnPremisesConnection-id).Post(requestBody)


```