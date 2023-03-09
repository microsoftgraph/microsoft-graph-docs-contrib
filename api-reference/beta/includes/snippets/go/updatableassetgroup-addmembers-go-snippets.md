---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewAddMembersPostRequestBody()


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

assets := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetAssets(assets)

graphClient.Admin().Windows().Updates().UpdatableAssetsById("updatableAsset-id").WindowsUpdatesAddMembers().Post(context.Background(), requestBody, nil)


```