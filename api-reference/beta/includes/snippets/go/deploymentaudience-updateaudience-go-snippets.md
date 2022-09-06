---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateAudiencePostRequestBody()


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

addMembers := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetAddMembers(addMembers)


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

removeMembers := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetRemoveMembers(removeMembers)


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

addExclusions := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetAddExclusions(addExclusions)


updatableAsset := graphmodels.NewUpdatableAsset()
id := "String (identifier)"
updatableAsset.SetId(&id) 

removeExclusions := []graphmodels.Objectable {
	updatableAsset,

}
requestBody.SetRemoveExclusions(removeExclusions)

graphClient.Admin().Windows().Updates().DeploymentsById("deployment-id").Audience().UpdateAudience().Post(requestBody)


```