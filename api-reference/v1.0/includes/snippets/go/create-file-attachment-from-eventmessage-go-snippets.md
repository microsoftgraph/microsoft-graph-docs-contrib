---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
additionalData := map[string]interface{}{
	"contentLocation" : "contentLocation-value", 
	"contentBytes" : "base64-contentBytes-value", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().Post(context.Background(), requestBody, nil)


```