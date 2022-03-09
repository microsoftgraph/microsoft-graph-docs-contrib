---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

programControlId := "programControl-id"
result, err := graphClient.ProgramControlsById(&programControlId).Delete(nil)


```