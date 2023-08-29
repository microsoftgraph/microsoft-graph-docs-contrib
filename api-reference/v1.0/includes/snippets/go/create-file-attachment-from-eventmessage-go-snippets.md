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


requestBody := graphmodels.NewAttachment()
name := "name-value"
requestBody.SetName(&name) 
contentType := "contentType-value"
requestBody.SetContentType(&contentType) 
isInline := false
requestBody.SetIsInline(&isInline) 
contentLocation := "contentLocation-value"
requestBody.SetContentLocation(&contentLocation) 
contentBytes := []byte("base64-contentBytes-value")
requestBody.SetContentBytes(&contentBytes) 

attachments, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().Post(context.Background(), requestBody, nil)


```