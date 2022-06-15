---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessage()
subject := "Did you see last night's game?"
requestBody.SetSubject(&subject)
importance := "Low"
requestBody.SetImportance(&importance)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "HTML"
body.SetContentType(&contentType)
content := "They were <b>awesome</b>!"
body.SetContent(&content)
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
address := "AdeleV@contoso.onmicrosoft.com"
	emailAddress.SetAddress(&address)
}
result, err := graphClient.Me().Messages().Post(requestBody)


```