---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
reason := "reason-value"
requestBody.SetReason(&reason)
duration := "duration-value"
requestBody.SetDuration(&duration)
ticketNumber := "ticketNumber-value"
requestBody.SetTicketNumber(&ticketNumber)
ticketSystem := "ticketSystem-value"
requestBody.SetTicketSystem(&ticketSystem)
options := &msgraphsdk.SelfActivateRequestBuilderPostOptions{
	Body: requestBody,
}
privilegedRoleId := "privilegedRole-id"
result, err := graphClient.PrivilegedRolesById(&privilegedRoleId).SelfActivate().Post(options)


```