---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
message := msgraphsdk.NewMessage()
requestBody.SetMessage(message)
subject := "9/9/2018: concert"
message.SetSubject(&subject)
body := msgraphsdk.NewItemBody()
message.SetBody(body)
contentType := "HTML"
body.SetContentType(&contentType)
content := "The group represents Nevada."
body.SetContent(&content)
message.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
message.SetInternetMessageHeaders( []InternetMessageHeader {
	msgraphsdk.NewInternetMessageHeader(),
	SetAdditionalData(map[string]interface{}{
		"name": "x-custom-header-group-name",
		"value": "Nevada",
	}
	msgraphsdk.NewInternetMessageHeader(),
	SetAdditionalData(map[string]interface{}{
		"name": "x-custom-header-group-id",
		"value": "NV001",
	}
}
options := &msgraphsdk.SendMailRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Me().SendMail().Post(options)


```