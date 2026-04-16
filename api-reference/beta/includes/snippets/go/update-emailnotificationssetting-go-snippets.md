---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewEmailNotificationsSetting()
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
additionalEvents := graphmodels.RESTOREANDPOLICYUPDATES_NOTIFICATIONEVENTSTYPE 
requestBody.SetAdditionalEvents(&additionalEvents) 
recipients := graphmodels.NewNotificationRecipients()
role := graphmodels.CUSTOM_NOTIFICATIONRECIPIENTSTYPE 
recipients.SetRole(&role) 


emailIdentity := graphmodels.NewEmailIdentity()
email := "amala@contoso.com"
emailIdentity.SetEmail(&email) 
emailIdentity1 := graphmodels.NewEmailIdentity()
email := "conrad@contoso.com"
emailIdentity1.SetEmail(&email) 
emailIdentity2 := graphmodels.NewEmailIdentity()
email := "lothar@contoso.com"
emailIdentity2.SetEmail(&email) 

customRecipients := []graphmodels.EmailIdentityable {
	emailIdentity,
	emailIdentity1,
	emailIdentity2,
}
recipients.SetCustomRecipients(customRecipients)
requestBody.SetRecipients(recipients)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
emailNotificationsSetting, err := graphClient.Solutions().BackupRestore().EmailNotificationsSetting().Patch(context.Background(), requestBody, nil)


```