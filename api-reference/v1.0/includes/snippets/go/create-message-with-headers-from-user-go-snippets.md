---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewMessage()
subject := "9/8/2018: concert"
requestBody.SetSubject(&subject)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "HTML"
body.SetContentType(&contentType)
content := "The group represents Washington."
body.SetContent(&content)
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
	SetAdditionalData(map[string]interface{}{
	}
}
requestBody.SetInternetMessageHeaders( []InternetMessageHeader {
	msgraphsdk.NewInternetMessageHeader(),
	SetAdditionalData(map[string]interface{}{
		"name": "x-custom-header-group-name",
		"value": "Washington",
	}
	msgraphsdk.NewInternetMessageHeader(),
	SetAdditionalData(map[string]interface{}{
		"name": "x-custom-header-group-id",
		"value": "WA001",
	}
}
options := &msgraphsdk.MessagesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Messages().Post(options)


```