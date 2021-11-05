---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPrivilegedRoleAssignmentRequest()
duration := "2"
requestBody.SetDuration(&duration)
reason := "Activate the role for business purpose"
requestBody.SetReason(&reason)
ticketNumber := "234"
requestBody.SetTicketNumber(&ticketNumber)
ticketSystem := "system"
requestBody.SetTicketSystem(&ticketSystem)
schedule := msgraphsdk.NewGovernanceSchedule()
requestBody.SetSchedule(schedule)
startDateTime, err := time.Parse(time.RFC3339, "2018-02-08T02:35:17.903Z")
schedule.SetStartDateTime(&startDateTime)
type := "UserAdd"
requestBody.SetType(&type)
assignmentState := "Active"
requestBody.SetAssignmentState(&assignmentState)
roleId := "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
requestBody.SetRoleId(&roleId)
options := &msgraphsdk.PrivilegedRoleAssignmentRequestsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.PrivilegedRoleAssignmentRequests().Post(options);


```