---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSubscription()
changeType := "created"
requestBody.SetChangeType(&changeType) 
notificationUrl := "https://webhook.azurewebsites.net/api/send/myNotifyClient"
requestBody.SetNotificationUrl(&notificationUrl) 
resource := "me/mailFolders('Inbox')/messages"
requestBody.SetResource(&resource) 
expirationDateTime , err := time.Parse(time.RFC3339, "2016-11-20T18:23:45.9356913Z")
requestBody.SetExpirationDateTime(&expirationDateTime) 
clientState := "secretClientValue"
requestBody.SetClientState(&clientState) 
latestSupportedTlsVersion := "v1_2"
requestBody.SetLatestSupportedTlsVersion(&latestSupportedTlsVersion) 

result, err := graphClient.Subscriptions().Post(context.Background(), requestBody, nil)


```