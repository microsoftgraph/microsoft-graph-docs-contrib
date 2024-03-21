---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



graphClient.EmployeeExperience().Goals().ExportJobs().ByGoalsExportJobId("goalsExportJob-id").Content().Get(context.Background(), nil)


```