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
	  //other-imports
)


requestFilter := "contentcorrelationId eq 'bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3'"

requestParameters := &graphusers.OnlineMeetingsItemAiInsightsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphusers.OnlineMeetingsItemAiInsightsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
aiInsights, err := graphClient.Me().OnlineMeetings().ByOnlineMeetingId("onlineMeeting-id").AiInsights().Get(context.Background(), configuration)


```