---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphemployeeexperience "github.com/microsoftgraph/msgraph-beta-sdk-go/employeeexperience"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'"

requestParameters := &graphemployeeexperience.EmployeeExperienceGoalsExportJobsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphemployeeexperience.EmployeeExperienceGoalsExportJobsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

exportJobs, err := graphClient.EmployeeExperience().Goals().ExportJobs().Get(context.Background(), configuration)


```