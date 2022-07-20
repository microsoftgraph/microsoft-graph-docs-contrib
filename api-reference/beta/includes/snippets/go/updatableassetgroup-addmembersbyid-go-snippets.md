---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddMembersByIdPostRequestBody()
ids := []String {
	"String",
	"String",
	"String",

}
requestBody.SetIds(ids)
memberEntityType := "#microsoft.graph.windowsUpdates.azureADDevice"
requestBody.SetMemberEntityType(&memberEntityType) 

graphClient.Admin().Windows().Updates().UpdatableAssetsById("updatableAsset-id").AddMembersById(updatableAsset-id).Post(requestBody)


```