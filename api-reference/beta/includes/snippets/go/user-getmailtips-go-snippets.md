---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetEmailAddresses( []String {
	"danas@contoso.onmicrosoft.com",
	"fannyd@contoso.onmicrosoft.com",
}
mailTipsOptions := "automaticReplies, mailboxFullStatus"
requestBody.SetMailTipsOptions(&mailTipsOptions)
options := &msgraphsdk.GetMailTipsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().GetMailTips().Post(options)


```