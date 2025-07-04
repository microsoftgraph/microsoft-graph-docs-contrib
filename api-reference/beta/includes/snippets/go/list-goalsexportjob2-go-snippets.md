---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphemployeeexperience "github.com/microsoftgraph/msgraph-beta-sdk-go/employeeexperience"
	  //other-imports
)


requestFilter := " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'"

requestParameters := &graphemployeeexperience.GoalsExportJobsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphemployeeexperience.GoalsExportJobsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
exportJobs, err := graphClient.EmployeeExperience().Goals().ExportJobs().Get(context.Background(), configuration)


```