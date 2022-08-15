---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplyTagsPostRequestBody()


tag := graphmodels.NewTag()
id := "b4798d14-748d-468e-a1ec-96a2b1d49677"
tag.SetId(&id) 

tagsToAdd := []graphmodels.Objectable {
	tag,

}
requestBody.SetTagsToAdd(tagsToAdd)

graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSetsById("reviewSet-id").QueriesById("reviewSetQuery-id").ApplyTags().Post(requestBody)


```