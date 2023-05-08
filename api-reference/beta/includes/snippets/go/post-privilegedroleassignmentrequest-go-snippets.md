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


requestBody := graphmodels.NewPrivilegedRoleAssignmentRequest()
duration := "2"
requestBody.SetDuration(&duration) 
reason := "Activate the role for business purpose"
requestBody.SetReason(&reason) 
ticketNumber := "234"
requestBody.SetTicketNumber(&ticketNumber) 
ticketSystem := "system"
requestBody.SetTicketSystem(&ticketSystem) 
schedule := graphmodels.NewGovernanceSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2018-02-08T02:35:17.903Z")
schedule.SetStartDateTime(&startDateTime) 
requestBody.SetSchedule(schedule)
type := "UserAdd"
requestBody.SetType(&type) 
assignmentState := "Active"
requestBody.SetAssignmentState(&assignmentState) 
roleId := "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
requestBody.SetRoleId(&roleId) 

result, err := graphClient.PrivilegedRoleAssignmentRequests().Post(context.Background(), requestBody, nil)


```