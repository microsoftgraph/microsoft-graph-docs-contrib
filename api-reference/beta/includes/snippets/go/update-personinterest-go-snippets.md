---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPersonInterest()
categories := []string {
	"Sports",

}
requestBody.SetCategories(categories)

result, err := graphClient.Me().Profile().InterestsById("personInterest-id").Patch(context.Background(), requestBody, nil)


```