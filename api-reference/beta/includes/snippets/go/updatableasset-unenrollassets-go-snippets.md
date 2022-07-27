---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnenrollAssetsPostRequestBody()
updateCategory := graphmodels.STRING_UPDATECATEGORY 
requestBody.SetUpdateCategory(&updateCategory) 


 := graphmodels.New()
additionalData := map[string]interface{}{
	"@odata.type" : "#microsoft.graph.windowsUpdates.azureADDevice", 
	"id" : "String (identifier)", 
}
.SetAdditionalData(additionalData)

assets := []graphmodels.Objectable {
	,

}
requestBody.SetAssets(assets)

graphClient.Admin().Windows().Updates().UpdatableAssets().UnenrollAssets().Post(requestBody)


```