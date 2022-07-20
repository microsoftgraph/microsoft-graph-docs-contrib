---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplyTagsPostRequestBody()


 := graphmodels.New()
additionalData := map[string]interface{}{
	"id" : "d3d99dc704a74801b792b3e1e722aa0d", 
}
.SetAdditionalData(additionalData)

tagsToAdd := []graphmodels.Objectable {
	,

}
requestBody.SetTagsToAdd(tagsToAdd)

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").ReviewSetsById("ediscoveryReviewSet-id").QueriesById("ediscoveryReviewSetQuery-id").ApplyTags(ediscoveryCase-id, ediscoveryReviewSet-id, ediscoveryReviewSetQuery-id).Post(requestBody)


```