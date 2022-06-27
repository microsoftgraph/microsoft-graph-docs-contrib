---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
softwareType := "teamsClient"
requestBody.SetSoftwareType(&softwareType)
softwareVersion := "1.0.96.22"
requestBody.SetSoftwareVersion(&softwareVersion)
teamworkDeviceId := "teamworkDevice-id"
graphClient.Teamwork().DevicesById(&teamworkDeviceId).UpdateSoftware(teamworkDevice-id).Post(requestBody)


```