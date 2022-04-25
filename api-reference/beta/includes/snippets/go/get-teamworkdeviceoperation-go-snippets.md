---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

teamworkDeviceId := "teamworkDevice-id"
teamworkDeviceOperationId := "teamworkDeviceOperation-id"
result, err := graphClient.Teamwork().DevicesById(&teamworkDeviceId).OperationsById(&teamworkDeviceOperationId).Get(nil)


```