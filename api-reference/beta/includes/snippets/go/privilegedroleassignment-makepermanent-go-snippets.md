---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMakePermanentPostRequestBody()
reason := "reason-value"
requestBody.SetReason(&reason) 
ticketNumber := "ticketNumber-value"
requestBody.SetTicketNumber(&ticketNumber) 
ticketSystem := "ticketSystem-value"
requestBody.SetTicketSystem(&ticketSystem) 

result, err := graphClient.PrivilegedRoleAssignmentsById("privilegedRoleAssignment-id").MakePermanent().Post(requestBody)


```