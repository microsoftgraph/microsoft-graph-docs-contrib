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

requestParameters := &grapheducation.EducationClasseItemGetRecentlyModifiedSubmissionsWithRequestBuilderGetQueryParameters{
	Select: [] string {"excusedDateTime"},
}
configuration := &grapheducation.EducationClasseItemGetRecentlyModifiedSubmissionsWithRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getRecentlyModifiedSubmissions, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").GetRecentlyModifiedSubmissions().GetAsGetRecentlyModifiedSubmissionsGetResponse(context.Background(), configuration)


```