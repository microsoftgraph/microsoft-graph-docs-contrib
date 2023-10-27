---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAttachmentBase()
name := "smile"
requestBody.SetName(&name) 
contentBytes := []byte("a0b1c76de9f7=")
requestBody.SetContentBytes(&contentBytes) 
contentType := "image/gif"
requestBody.SetContentType(&contentType) 

attachments, err := graphClient.Me().Todo().Lists().ByTodoTaskListId("todoTaskList-id").Tasks().ByTodoTaskId("todoTask-id").Attachments().Post(context.Background(), requestBody, nil)


```