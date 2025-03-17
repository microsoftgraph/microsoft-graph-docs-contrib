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


requestFilter := "id eq 'd4cb4f68-9136-48d3-9054-c1208ea274f0'"

requestParameters := &grapheducation.ClassesItemAssignmentCategoriesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ClassesItemAssignmentCategoriesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentCategories, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentCategories().Get(context.Background(), configuration)


```