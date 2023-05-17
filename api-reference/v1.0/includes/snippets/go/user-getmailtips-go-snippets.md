---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/GetMailTips"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetMailTipsPostRequestBody()
emailAddresses := []string {
	"danas@contoso.onmicrosoft.com",
	"fannyd@contoso.onmicrosoft.com",

}
requestBody.SetEmailAddresses(emailAddresses)
mailTipsOptions := graphmodels.AUTOMATICREPLIES, MAILBOXFULLSTATUS_MAILTIPSTYPE 
requestBody.SetMailTipsOptions(&mailTipsOptions) 

result, err := graphClient.Me().GetMailTips().Post(context.Background(), requestBody, nil)


```