---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewBundlesPostRequestBody()
additionalData := map[string]interface{}{
	"name" : "Just some files", 
	"@microsoft.graph.conflictBehavior" : "rename", 
bundle := graphmodels.New()
	requestBody.SetBundle(bundle)


 := graphmodels.New()
id := "1234asdf"
.SetId(&id) 
 := graphmodels.New()
id := "1234qwerty"
.SetId(&id) 

	children := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Drive().Bundles().Post(requestBody)


```