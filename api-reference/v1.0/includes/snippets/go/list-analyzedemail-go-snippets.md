---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  //other-imports
)


requestStartTime := "2024-02-18"
requestEndTime := "2024-02-20"

requestParameters := &graphsecurity.CollaborationAnalyzedEmailsRequestBuilderGetQueryParameters{
	StartTime: &requestStartTime,
	EndTime: &requestEndTime,
}
configuration := &graphsecurity.CollaborationAnalyzedEmailsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
analyzedEmails, err := graphClient.Security().Collaboration().AnalyzedEmails().Get(context.Background(), configuration)


```