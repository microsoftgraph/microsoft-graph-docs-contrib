---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewContactMergeSuggestions()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled)
options := &msgraphsdk.ContactMergeSuggestionsRequestBuilderPatchOptions{
	Body: requestBody,
}
graphClient.Me().Settings().ContactMergeSuggestions().Patch(options)


```