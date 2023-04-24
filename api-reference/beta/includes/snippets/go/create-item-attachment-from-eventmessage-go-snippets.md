---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
additionalData := map[string]interface{}{
item := graphmodels.New()
	requestBody.SetItem(item)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Me().Events().ByEventId("event-id").Attachments().Post(context.Background(), requestBody, nil)


```