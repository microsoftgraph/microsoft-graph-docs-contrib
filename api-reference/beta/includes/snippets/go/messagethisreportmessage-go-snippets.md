---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemReportMessagePostRequestBody()
isMessageMoveRequested := true
requestBody.SetIsMessageMoveRequested(&isMessageMoveRequested) 
reportAction := graphmodels.JUNK_REPORTACTION 
requestBody.SetReportAction(&reportAction) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
reportMessage, err := graphClient.Me().Messages().ByMessageId("message-id").ReportMessage().Post(context.Background(), requestBody, nil)


```