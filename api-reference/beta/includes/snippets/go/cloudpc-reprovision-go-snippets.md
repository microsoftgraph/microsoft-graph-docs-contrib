---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
userAccountType := "administrator"
requestBody.SetUserAccountType(&userAccountType)
osVersion := "windows10"
requestBody.SetOsVersion(&osVersion)
options := &msgraphsdk.ReprovisionRequestBuilderPostOptions{
	Body: requestBody,
}
cloudPCId := "cloudPC-id"
graphClient.DeviceManagement().VirtualEndpoint().CloudPCsById(&cloudPCId).Reprovision().Post(options)


```