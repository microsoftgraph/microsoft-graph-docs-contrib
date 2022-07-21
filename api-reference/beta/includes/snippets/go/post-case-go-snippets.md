---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCase()
displayName := "My Case 1"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Compliance().Ediscovery().Cases().Post(requestBody)


```