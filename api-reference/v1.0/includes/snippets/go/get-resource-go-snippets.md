---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

onenoteResourceId := "onenoteResource-id"
result, err := graphClient.Me().Onenote().ResourcesById(&onenoteResourceId).Content().Get(nil)


```