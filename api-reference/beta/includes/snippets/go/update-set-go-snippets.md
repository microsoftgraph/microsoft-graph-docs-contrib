---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSet()
description := "mySet"
requestBody.SetDescription(&description) 

graphClient.TermStore().SetsById("set-id").Patch(requestBody)


```