---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

presenceId := "presence-id"
result, err := graphClient.Communications().PresencesById(&presenceId).Get(options)


```