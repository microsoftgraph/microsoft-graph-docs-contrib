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


requestFilter := "status eq 'assigned'"

requestParameters := &grapheducation.ClassesItemAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ClassesItemAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignments, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().Get(context.Background(), configuration)


```