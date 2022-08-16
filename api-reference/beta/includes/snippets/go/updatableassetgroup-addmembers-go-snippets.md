---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddMembersPostRequestBody()


updatableAsset := graphmodels.NewUpdatableAsset()
"@odata.type" := "#microsoft.graph.windowsUpdates.azureADDevice"
updatableAsset.Set"@odata.type"(&"@odata.type") 
id := "String (identifier)"
updatableAsset.SetId(&id) 

assets := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetAssets(assets)

graphClient.Admin().Windows().Updates().UpdatableAssetsById("updatableAsset-id").AddMembers().Post(requestBody)


```