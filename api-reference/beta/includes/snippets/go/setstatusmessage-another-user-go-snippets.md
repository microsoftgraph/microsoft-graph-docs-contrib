---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewSetStatusMessagePostRequestBody()
statusMessage := graphmodels.NewPresenceStatusMessage()
message := graphmodels.NewItemBody()
content := "Hey I am available now"
message.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
message.SetContentType(&contentType) 
statusMessage.SetMessage(message)
requestBody.SetStatusMessage(statusMessage)

graphClient.Users().ByUserId("user-id").Presence().SetStatusMessage().Post(context.Background(), requestBody, nil)


```