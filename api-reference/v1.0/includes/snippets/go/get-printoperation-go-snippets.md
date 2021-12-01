---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

printOperationId := "printOperation-id"
result, err := graphClient.Print().OperationsById(&printOperationId).Get(options)


```