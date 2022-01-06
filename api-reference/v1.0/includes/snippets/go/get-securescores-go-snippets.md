---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SecureScoresRequestBuilderGetQueryParameters{
	Top: 1,
}
options := &msgraphsdk.SecureScoresRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Security().SecureScores().Get(options)


```