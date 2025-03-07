---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMessage()
receivedDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetReceivedDateTime(&receivedDateTime) 
sentDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Me().MailFolders().ByMailFolderId("mailFolder-id").Messages().Post(context.Background(), requestBody, nil)


```