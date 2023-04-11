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
resource := "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages"
requestBody.SetResource(&resource) 
expirationDateTime , err := time.Parse(time.RFC3339, "2021-07-07T21:42:18.2257768+00:00")
requestBody.SetExpirationDateTime(&expirationDateTime) 
clientState := "secretClientState"
requestBody.SetClientState(&clientState) 

result, err := graphClient.Subscriptions().Post(context.Background(), requestBody, nil)


```