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

requestParameters := &graphcommunications.CallRecordsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"participants_v2"},
}
configuration := &graphcommunications.CallRecordsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
callRecords, err := graphClient.Communications().CallRecords().ByCallRecordId("callRecord-id").Get(context.Background(), configuration)


```