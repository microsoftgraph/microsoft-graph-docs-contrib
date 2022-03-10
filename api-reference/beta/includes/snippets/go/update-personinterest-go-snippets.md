---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPersonInterest()
requestBody.SetCategories( []String {
	"Sports",
}
options := &msgraphsdk.PersonInterestRequestBuilderPatchOptions{
	Body: requestBody,
}
personInterestId := "personInterest-id"
result, err := graphClient.Me().Profile().InterestsById(&personInterestId).Patch(options)


```