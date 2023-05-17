---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMessage()
subject := "Did you see last night's game?"
requestBody.SetSubject(&subject) 
importance := graphmodels.LOW_IMPORTANCE 
requestBody.SetImportance(&importance) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "They were <b>awesome</b>!"
body.SetContent(&content) 
requestBody.SetBody(body)


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "AdeleV@contoso.onmicrosoft.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,

}
requestBody.SetToRecipients(toRecipients)

result, err := graphClient.Me().Messages().Post(context.Background(), requestBody, nil)


```