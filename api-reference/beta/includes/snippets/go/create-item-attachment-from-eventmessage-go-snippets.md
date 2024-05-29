---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAttachment()
name := "name-value"
requestBody.SetName(&name) 
additionalData := map[string]interface{}{
item := graphmodels.NewMessage()
	requestBody.SetItem(item)
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
attachments, err := graphClient.Me().Events().ByEventId("event-id").Attachments().Post(context.Background(), requestBody, nil)


```