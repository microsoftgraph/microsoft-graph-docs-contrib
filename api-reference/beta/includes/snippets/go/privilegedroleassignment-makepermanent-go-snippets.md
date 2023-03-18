---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewMakePermanentPostRequestBody()
reason := "reason-value"
requestBody.SetReason(&reason) 
ticketNumber := "ticketNumber-value"
requestBody.SetTicketNumber(&ticketNumber) 
ticketSystem := "ticketSystem-value"
requestBody.SetTicketSystem(&ticketSystem) 

result, err := graphClient.PrivilegedRoleAssignmentsById("privilegedRoleAssignment-id").MakePermanent().Post(context.Background(), requestBody, nil)


```