---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)


requestFilter := "submitDateTime gt 2025-06-11T00:00:00.000Z and submitDateTime lt 2025-06-12T00:00:00Z"

requestParameters := &grapheducation.ReportsReflectCheckInResponsesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ReportsReflectCheckInResponsesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
reflectCheckInResponses, err := graphClient.Education().Reports().ReflectCheckInResponses().Get(context.Background(), configuration)


```