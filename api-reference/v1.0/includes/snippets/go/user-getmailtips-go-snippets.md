---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemGetMailTipsPostRequestBody()
emailAddresses := []string {
	"danas@contoso.com",
	"fannyd@contoso.com",
}
requestBody.SetEmailAddresses(emailAddresses)
mailTipsOptions := graphmodels.AUTOMATICREPLIES, MAILBOXFULLSTATUS_MAILTIPSTYPE 
requestBody.SetMailTipsOptions(&mailTipsOptions) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getMailTips, err := graphClient.Me().GetMailTips().PostAsGetMailTipsPostResponse(context.Background(), requestBody, nil)


```