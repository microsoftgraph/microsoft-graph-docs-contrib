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
name := "smile"
requestBody.SetName(&name) 
additionalData := map[string]interface{}{
	"contentBytes" : "R0lGODdhEAYEAA7", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Messages().ByMessageId("message-id").Attachments().Post(context.Background(), requestBody, nil)


```