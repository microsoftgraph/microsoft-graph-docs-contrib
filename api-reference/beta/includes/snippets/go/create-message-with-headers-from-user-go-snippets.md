---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMessage()
subject := "9/8/2018: concert"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "The group represents Washington."
body.SetContent(&content) 
requestBody.SetBody(body)


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "AlexW@contoso.OnMicrosoft.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,

}
requestBody.SetToRecipients(toRecipients)


internetMessageHeader := graphmodels.NewInternetMessageHeader()
name := "x-custom-header-group-name"
internetMessageHeader.SetName(&name) 
value := "Washington"
internetMessageHeader.SetValue(&value) 
internetMessageHeader1 := graphmodels.NewInternetMessageHeader()
name := "x-custom-header-group-id"
internetMessageHeader1.SetName(&name) 
value := "WA001"
internetMessageHeader1.SetValue(&value) 

internetMessageHeaders := []graphmodels.InternetMessageHeaderable {
	internetMessageHeader,
	internetMessageHeader1,

}
requestBody.SetInternetMessageHeaders(internetMessageHeaders)

result, err := graphClient.Me().Messages().Post(context.Background(), requestBody, nil)


```