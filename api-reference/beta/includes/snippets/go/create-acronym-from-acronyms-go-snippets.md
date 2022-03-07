---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAcronym()
displayName := "DNN"
requestBody.SetDisplayName(&displayName)
standsFor := "Deep Neural Network"
requestBody.SetStandsFor(&standsFor)
description := "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers."
requestBody.SetDescription(&description)
webUrl := "http://microsoft.com/deep-neural-network"
requestBody.SetWebUrl(&webUrl)
state := "draft"
requestBody.SetState(&state)
options := &msgraphsdk.AcronymsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Search().Acronyms().Post(options)


```