---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphusers.NewItemTranslateExchangeIdsPostRequestBody()
inputIds := []string {
	"{rest-formatted-id-1}",
	"{rest-formatted-id-2}",
}
requestBody.SetInputIds(inputIds)
sourceIdType := graphmodels.RESTID_EXCHANGEIDFORMAT 
requestBody.SetSourceIdType(&sourceIdType) 
targetIdType := graphmodels.RESTIMMUTABLEENTRYID_EXCHANGEIDFORMAT 
requestBody.SetTargetIdType(&targetIdType) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
translateExchangeIds, err := graphClient.Me().TranslateExchangeIds().PostAsTranslateExchangeIdsPostResponse(context.Background(), requestBody, nil)


```