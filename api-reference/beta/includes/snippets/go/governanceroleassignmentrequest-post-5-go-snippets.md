---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGovernanceRoleAssignmentRequest()
roleDefinitionId := "70521f3e-3b95-4e51-b4d2-a2f485b02103"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
resourceId := "e5e7d29d-5465-45ac-885f-4716a5ee74b5"
requestBody.SetResourceId(&resourceId) 
subjectId := "1566d11d-d2b6-444a-a8de-28698682c445"
requestBody.SetSubjectId(&subjectId) 
assignmentState := "Eligible"
requestBody.SetAssignmentState(&assignmentState) 
type := "AdminUpdate"
requestBody.SetType(&type) 
schedule := graphmodels.NewGovernanceSchedule()
type := "Once"
schedule.SetType(&type) 
startDateTime , err := time.Parse(time.RFC3339, "2018-03-08T05:42:45.317Z")
schedule.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-06-05T05:42:31.000Z")
schedule.SetEndDateTime(&endDateTime) 
requestBody.SetSchedule(schedule)

result, err := graphClient.PrivilegedAccess().ByPrivilegedAccesId("privilegedAccess-id").RoleAssignmentRequests().Post(context.Background(), requestBody, nil)


```