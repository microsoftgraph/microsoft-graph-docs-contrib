---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTerm()
requestBody.SetLabels( []LocalizedLabel {
	msgraphsdk.NewLocalizedLabel(),
languageTag := "en-US"
	SetLanguageTag(&languageTag)
name := "Car"
	SetName(&name)
isDefault := true
	SetIsDefault(&isDefault)
}
setId := "set-id"
result, err := graphClient.TermStore().SetsById(&setId).Children().Post(requestBody)


```