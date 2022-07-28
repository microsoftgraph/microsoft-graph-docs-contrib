---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRemoveMembersPostRequestBody()


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

graphClient.Admin().Windows().Updates().UpdatableAssetsById("updatableAsset-id").RemoveMembers(updatableAsset-id).Post(requestBody)


```