---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Events/Item/Attachments/CreateUploadSession"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateUploadSessionPostRequestBody()
attachmentItem := graphmodels.NewAttachmentItem()
attachmentType := graphmodels.FILE_ATTACHMENTTYPE 
attachmentItem.SetAttachmentType(&attachmentType) 
name := "flower"
attachmentItem.SetName(&name) 
size := int64(3483322)
attachmentItem.SetSize(&size) 
requestBody.SetAttachmentItem(attachmentItem)

result, err := graphClient.Me().Events().ByEventId("event-id").Attachments().CreateUploadSession().Post(context.Background(), requestBody, nil)


```