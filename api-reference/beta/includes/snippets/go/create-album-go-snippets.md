---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBundlesPostRequestBody()
additionalData := map[string]interface{}{
	"name" : "My Day at the Beach", 
	"@microsoft.graph.conflictBehavior" : "rename", 
bundle := graphmodels.New()
album := graphmodels.New()
	bundle.SetAlbum(album)
	requestBody.SetBundle(bundle)


 := graphmodels.New()
id := "1234asdf"
.SetId(&id) 

	children := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Drive().Bundles().Post(context.Background(), requestBody, nil)


```