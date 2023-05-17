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


requestBody := graphmodels.NewMailboxSettings()
delegateMeetingMessageDeliveryOptions := graphmodels.SENDTODELEGATEANDPRINCIPAL_DELEGATEMEETINGMESSAGEDELIVERYOPTIONS 
requestBody.SetDelegateMeetingMessageDeliveryOptions(&delegateMeetingMessageDeliveryOptions) 

result, err := graphClient.Users().ByUserId("user-id").MailboxSettings().Patch(context.Background(), requestBody, nil)


```