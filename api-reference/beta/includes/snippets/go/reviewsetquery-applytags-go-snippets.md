---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplyTagsPostRequestBody()


 := graphmodels.New()
additionalData := map[string]interface{}{
	"id" : "b4798d14-748d-468e-a1ec-96a2b1d49677", 
}
.SetAdditionalData(additionalData)

tagsToAdd := []graphmodels.Objectable {
	,

}
requestBody.SetTagsToAdd(tagsToAdd)

graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSetsById("reviewSet-id").QueriesById("reviewSetQuery-id").ApplyTags(case-id, reviewSet-id, reviewSetQuery-id).Post(requestBody)


```