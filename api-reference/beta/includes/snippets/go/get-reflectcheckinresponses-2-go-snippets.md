---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-beta-sdk-go/education"
	  //other-imports
)


requestFilter := "submitDateTime gt 2023-10-10T00:00:00.000Z and submitDateTime lt 2023-10-11T00:00:00.000Z"

requestParameters := &grapheducation.ReportsReflectCheckInResponsesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ReportsReflectCheckInResponsesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
reflectCheckInResponses, err := graphClient.Education().Reports().ReflectCheckInResponses().Get(context.Background(), configuration)


```