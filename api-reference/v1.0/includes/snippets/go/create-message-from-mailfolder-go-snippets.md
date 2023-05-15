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


requestBody := graphmodels.NewMessage()
receivedDateTime , err := time.Parse(time.RFC3339, "datetime-value")
requestBody.SetReceivedDateTime(&receivedDateTime) 
sentDateTime , err := time.Parse(time.RFC3339, "datetime-value")
requestBody.SetSentDateTime(&sentDateTime) 
hasAttachments := true
requestBody.SetHasAttachments(&hasAttachments) 
subject := "subject-value"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "content-value"
body.SetContent(&content) 
requestBody.SetBody(body)
bodyPreview := "bodyPreview-value"
requestBody.SetBodyPreview(&bodyPreview) 

result, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Messages().Post(context.Background(), requestBody, nil)


```