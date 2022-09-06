---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEnrollAssetsPostRequestBody()
updateCategory := graphmodels.STRING_UPDATECATEGORY 
requestBody.SetUpdateCategory(&updateCategory) 


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

assets := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetAssets(assets)

graphClient.Admin().Windows().Updates().UpdatableAssets().EnrollAssets().Post(requestBody)


```