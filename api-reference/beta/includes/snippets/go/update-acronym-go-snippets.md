---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAcronym()
description := "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers."
requestBody.SetDescription(&description)
options := &msgraphsdk.AcronymRequestBuilderPatchOptions{
	Body: requestBody,
}
acronymId := "acronym-id"
graphClient.Search().AcronymsById(&acronymId).Patch(options)


```