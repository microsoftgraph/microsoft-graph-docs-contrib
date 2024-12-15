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


requestFilter := "id eq 'bc98d7cd-7cf3-449c-b1b9-3a9683024d4e'"

requestParameters := &grapheducation.ClassesItemAssignmentsItemResourcesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ClassesItemAssignmentsItemResourcesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resources, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Assignments().ByEducationAssignmentId("educationAssignment-id").Resources().Get(context.Background(), configuration)


```