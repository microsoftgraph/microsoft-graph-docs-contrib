---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  //other-imports
)


requestFilter := "participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')"

requestParameters := &graphcommunications.CommunicationsCallRecordsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphcommunications.CommunicationsCallRecordsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
callRecords, err := graphClient.Communications().CallRecords().Get(context.Background(), configuration)


```