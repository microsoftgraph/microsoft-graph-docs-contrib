---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMessage()
subject := "subject-value"
requestBody.SetSubject(&subject) 
body := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
body.SetContentType(&contentType) 
content := "content-value"
body.SetContent(&content) 
requestBody.SetBody(body)
inferenceClassification := graphmodels.OTHER_INFERENCECLASSIFICATIONTYPE 
requestBody.SetInferenceClassification(&inferenceClassification) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Me().Messages().ByMessageId("message-id").Patch(context.Background(), requestBody, nil)


```