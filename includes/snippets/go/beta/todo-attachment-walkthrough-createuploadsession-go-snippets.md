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


requestBody := graphusers.NewItemCreateUploadSessionPostRequestBody()
attachmentInfo := graphmodels.NewAttachmentInfo()
attachmentType := graphmodels.FILE_ATTACHMENTTYPE 
attachmentInfo.SetAttachmentType(&attachmentType) 
name := "flower"
attachmentInfo.SetName(&name) 
size := int64(3483322)
attachmentInfo.SetSize(&size) 
requestBody.SetAttachmentInfo(attachmentInfo)

createUploadSession, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().ByTodoTaskId("todoTask-id").Attachments().CreateUploadSession().Post(context.Background(), requestBody, nil)


```