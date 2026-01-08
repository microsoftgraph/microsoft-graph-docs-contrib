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


requestFilter := "submissionDateTime gt 2025-05-28T00:00:00Z and submissionDateTime lt 2025-05-29T00:00:00Z"

requestParameters := &grapheducation.ReportsSpeakerAssignmentSubmissionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &grapheducation.ReportsSpeakerAssignmentSubmissionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
speakerAssignmentSubmissions, err := graphClient.Education().Reports().SpeakerAssignmentSubmissions().Get(context.Background(), configuration)


```