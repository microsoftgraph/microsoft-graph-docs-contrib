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


requestFilter := "assignmentId eq 'b20d6737-f88e-4892-8174-73aa26d18784'"

requestParameters := &grapheducation.EducationClasseItemGetRecentlyModifiedSubmissionsWithRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Select: [] string {"LastModifiedDateTime","status"},
}
configuration := &grapheducation.EducationClasseItemGetRecentlyModifiedSubmissionsWithRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
getRecentlyModifiedSubmissions, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").GetRecentlyModifiedSubmissions().GetAsGetRecentlyModifiedSubmissionsGetResponse(context.Background(), configuration)


```