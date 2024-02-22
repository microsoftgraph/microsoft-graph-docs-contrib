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
name := "name-value"
requestBody.SetName(&name) 
contentType := "contentType-value"
requestBody.SetContentType(&contentType) 
isInline := false
requestBody.SetIsInline(&isInline) 
additionalData := map[string]interface{}{
	"contentLocation" : "contentLocation-value", 
	"contentBytes" : "contentBytes-value", 
}
requestBody.SetAdditionalData(additionalData)

attachments, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().Post(context.Background(), requestBody, nil)


```