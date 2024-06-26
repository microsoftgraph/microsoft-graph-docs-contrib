---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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
address := "AdeleV@contoso.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,
}
requestBody.SetToRecipients(toRecipients)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Me().Messages().Post(context.Background(), requestBody, nil)


```