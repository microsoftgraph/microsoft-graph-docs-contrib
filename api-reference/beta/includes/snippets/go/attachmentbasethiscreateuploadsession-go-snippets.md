---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Todo/Lists/Item/Tasks/Item/Attachments/CreateUploadSession"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCreateUploadSessionPostRequestBody()
attachmentInfo := graphmodels.NewAttachmentInfo()
attachmentType := graphmodels.FILE_ATTACHMENTTYPE 
attachmentInfo.SetAttachmentType(&attachmentType) 
name := "flower"
attachmentInfo.SetName(&name) 
size := int64(3483322)
attachmentInfo.SetSize(&size) 
requestBody.SetAttachmentInfo(attachmentInfo)

result, err := graphClient.Me().Todo().Lists().ByListId("todoTaskList-id").Tasks().ByTaskId("todoTask-id").Attachments().CreateUploadSession().Post(context.Background(), requestBody, nil)


```