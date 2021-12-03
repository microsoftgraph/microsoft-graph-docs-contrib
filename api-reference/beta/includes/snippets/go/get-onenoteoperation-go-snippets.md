---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

onenoteOperationId := "onenoteOperation-id"
result, err := graphClient.Me().Onenote().OperationsById(&onenoteOperationId).Get(nil)


```