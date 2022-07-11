---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewMessage()
subject := "Annual review"
requestBody.SetSubject(&subject)
body := msgraphsdk.NewItemBody()
requestBody.SetBody(body)
contentType := "HTML"
body.SetContentType(&contentType)
content := "You should be proud!"
body.SetContent(&content)
requestBody.SetToRecipients( []Recipient {
	msgraphsdk.NewRecipient(),
emailAddress := msgraphsdk.NewEmailAddress()
	SetEmailAddress(emailAddress)
address := "rufus@contoso.com"
	emailAddress.SetAddress(&address)
}
requestBody.SetExtensions( []Extension {
	msgraphsdk.NewExtension(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "microsoft.graph.openTypeExtension",
		"extensionName": "Com.Contoso.Referral",
		"companyName": "Wingtip Toys",
		"expirationDate": "2015-12-30T11:00:00.000Z",
		"dealValue": ,
	}
}
result, err := graphClient.Me().Messages().Post(requestBody)


```