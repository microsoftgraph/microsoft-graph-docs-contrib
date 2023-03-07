---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAddToReviewSetPostRequestBody()
sourceCollection := graphmodels.NewSourceCollection()
id := "1a9b4145d8f84e39bc45a7f68c5c5119"
sourceCollection.SetId(&id) 
requestBody.SetSourceCollection(sourceCollection)
additionalData := map[string]interface{}{
	"additionalData" : "linkedFiles", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSetsById("reviewSet-id").EdiscoveryAddToReviewSet().Post(context.Background(), requestBody, nil)


```