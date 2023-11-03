---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMessage()
subject := "Annual review"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "You should be proud!"
body.SetContent(&content) 
requestBody.SetBody(body)


recipient := graphmodels.NewRecipient()
emailAddress := graphmodels.NewEmailAddress()
address := "rufus@contoso.com"
emailAddress.SetAddress(&address) 
recipient.SetEmailAddress(emailAddress)

toRecipients := []graphmodels.Recipientable {
	recipient,
}
requestBody.SetToRecipients(toRecipients)


extension := graphmodels.NewOpenTypeExtension()
extensionName := "Com.Contoso.Referral"
extension.SetExtensionName(&extensionName) 
additionalData := map[string]interface{}{
	"companyName" : "Wingtip Toys", 
	"expirationDate" : "2015-12-30T11:00:00.000Z", 
	"dealValue" : int32(10000) , 
}
extension.SetAdditionalData(additionalData)

extensions := []graphmodels.Extensionable {
	extension,
}
requestBody.SetExtensions(extensions)

messages, err := graphClient.Me().Messages().Post(context.Background(), requestBody, nil)


```