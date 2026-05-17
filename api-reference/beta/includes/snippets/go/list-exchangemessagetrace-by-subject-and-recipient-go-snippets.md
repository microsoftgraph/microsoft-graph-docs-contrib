---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphadmin "github.com/microsoftgraph/msgraph-beta-sdk-go/admin"
	  //other-imports
)


requestFilter := "contains(subject, 'Weekly digest') and recipientAddress eq 'test@contoso.com'"

requestParameters := &graphadmin.ExchangeTracingMessageTracesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphadmin.ExchangeTracingMessageTracesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messageTraces, err := graphClient.Admin().Exchange().Tracing().MessageTraces().Get(context.Background(), configuration)


```