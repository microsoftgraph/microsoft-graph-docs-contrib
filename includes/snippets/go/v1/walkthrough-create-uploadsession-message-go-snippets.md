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

requestBody := graphusers.NewItemCreateUploadSessionPostRequestBody()
attachmentItem := graphmodels.NewAttachmentItem()
attachmentType := graphmodels.FILE_ATTACHMENTTYPE 
attachmentItem.SetAttachmentType(&attachmentType) 
name := "flower"
attachmentItem.SetName(&name) 
size := int64(3483322)
attachmentItem.SetSize(&size) 
requestBody.SetAttachmentItem(attachmentItem)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
createUploadSession, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().CreateUploadSession().Post(context.Background(), requestBody, nil)


```