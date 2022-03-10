---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

itemEmailId := "itemEmail-id"
result, err := graphClient.Me().Profile().EmailsById(&itemEmailId).Delete(nil)


```