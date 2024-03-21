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



requestFilter := " explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’"

requestParameters := &graphemployeeexperience.EmployeeExperienceGoalsExportJobsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphemployeeexperience.EmployeeExperienceGoalsExportJobsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

exportJobs, err := graphClient.EmployeeExperience().Goals().ExportJobs().Get(context.Background(), configuration)


```