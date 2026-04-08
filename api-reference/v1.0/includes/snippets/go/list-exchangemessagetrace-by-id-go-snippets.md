---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-sdk-go/admin"
	  //other-imports
)


requestFilter := "id eq 'a3f6d2c1-5c3b-4f7a-9d1e-2c8f1b0a6e45'"

requestParameters := &graphadmin.ExchangeTracingMessageTracesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphadmin.ExchangeTracingMessageTracesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messageTraces, err := graphClient.Admin().Exchange().Tracing().MessageTraces().Get(context.Background(), configuration)


```