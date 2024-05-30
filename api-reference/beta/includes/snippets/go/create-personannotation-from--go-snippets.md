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

requestBody := graphmodels.NewPersonAnnotation()
detail := graphmodels.NewItemBody()
contentType := graphmodels.TEXT_BODYTYPE 
detail.SetContentType(&contentType) 
content := "I am originally from Australia, but grew up in Moscow, Russia."
detail.SetContent(&content) 
requestBody.SetDetail(detail)
displayName := "About Me"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
notes, err := graphClient.Me().Profile().Notes().Post(context.Background(), requestBody, nil)


```