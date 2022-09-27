---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewContactMergeSuggestions()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

graphClient.Me().Settings().ContactMergeSuggestions().Patch(context.Background(), requestBody, nil)


```