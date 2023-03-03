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

graphClient.Admin().Windows().Updates().DeploymentAudiencesById("deploymentAudience-id").WindowsUpdatesUpdateAudience().Post(context.Background(), requestBody, nil)


```