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
roleDefinitionId := "0e88fd18-50f5-4ee1-9104-01c3ed910065"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
resourceId := "e5e7d29d-5465-45ac-885f-4716a5ee74b5"
requestBody.SetResourceId(&resourceId) 
subjectId := "74765671-9ca4-40d7-9e36-2f4a570608a6"
requestBody.SetSubjectId(&subjectId) 
assignmentState := "Eligible"
requestBody.SetAssignmentState(&assignmentState) 
type := "AdminExtend"
requestBody.SetType(&type) 
reason := "extend role assignment"
requestBody.SetReason(&reason) 
schedule := graphmodels.NewGovernanceSchedule()
type := "Once"
schedule.SetType(&type) 
startDateTime , err := time.Parse(time.RFC3339, "2018-05-12T23:53:55.327Z")
schedule.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-08-10T23:53:55.327Z")
schedule.SetEndDateTime(&endDateTime) 
requestBody.SetSchedule(schedule)

result, err := graphClient.PrivilegedAccess().ByPrivilegedAccesId("privilegedAccess-id").RoleAssignmentRequests().Post(context.Background(), requestBody, nil)


```