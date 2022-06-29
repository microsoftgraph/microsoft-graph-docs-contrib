---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

callId := "call-id"
commsOperationId := "commsOperation-id"
result, err := graphClient.Communications().CallsById(&callId).OperationsById(&commsOperationId).Get()


```