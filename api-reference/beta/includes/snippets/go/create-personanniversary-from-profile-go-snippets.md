---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPersonAnnualEvent()
type := "birthday"
requestBody.SetType(&type)
date := "1980-01-08"
requestBody.SetDate(&date)
options := &msgraphsdk.AnniversariesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Anniversaries().Post(options)


```