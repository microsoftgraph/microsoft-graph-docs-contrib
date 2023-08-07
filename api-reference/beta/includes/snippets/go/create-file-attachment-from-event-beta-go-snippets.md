---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAttachment()
name := "menu.txt"
requestBody.SetName(&name) 
contentBytes := []byte("bWFjIGFuZCBjaGVlc2UgdG9kYXk=")
requestBody.SetContentBytes(&contentBytes) 

attachments, err := graphClient.Me().Events().ByEventId("event-id").Attachments().Post(context.Background(), requestBody, nil)


```