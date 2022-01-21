---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewItemEmail()
address := "Innocenty.Popov@adventureworks.com"
requestBody.SetAddress(&address)
options := &msgraphsdk.EmailsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Emails().Post(options)


```