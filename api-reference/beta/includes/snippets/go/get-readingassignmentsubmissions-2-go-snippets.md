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


requestFilter := "submissionDateTime gt 2023-10-10T00:00:00.000Z and submissionDateTime lt 2023-10-11T00:00:00Z"

requestParameters := &grapheducation.ReportsReadingAssignmentSubmissionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ReportsReadingAssignmentSubmissionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
readingAssignmentSubmissions, err := graphClient.Education().Reports().ReadingAssignmentSubmissions().Get(context.Background(), configuration)


```