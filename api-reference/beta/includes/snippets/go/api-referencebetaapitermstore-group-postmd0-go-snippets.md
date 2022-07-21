---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGroup()
displayName := "myGroup"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.TermStore().Groups().Post(requestBody)


```