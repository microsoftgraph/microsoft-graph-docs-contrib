---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTag()
description := "This is an updated description."
requestBody.SetDescription(&description) 

graphClient.Compliance().Ediscovery().CasesById("case-id").TagsById("tag-id").Patch(requestBody)


```