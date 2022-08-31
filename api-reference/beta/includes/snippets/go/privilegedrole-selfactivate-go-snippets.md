---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSelfActivatePostRequestBody()
reason := "reason-value"
requestBody.SetReason(&reason) 
duration := "duration-value"
requestBody.SetDuration(&duration) 
ticketNumber := "ticketNumber-value"
requestBody.SetTicketNumber(&ticketNumber) 
ticketSystem := "ticketSystem-value"
requestBody.SetTicketSystem(&ticketSystem) 

result, err := graphClient.PrivilegedRolesById("privilegedRole-id").SelfActivate().Post(requestBody)


```