---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/PrivilegedRoleAssignments/Item/MakePermanent"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMakePermanentPostRequestBody()
reason := "reason-value"
requestBody.SetReason(&reason) 
ticketNumber := "ticketNumber-value"
requestBody.SetTicketNumber(&ticketNumber) 
ticketSystem := "ticketSystem-value"
requestBody.SetTicketSystem(&ticketSystem) 

result, err := graphClient.PrivilegedRoleAssignments().ByPrivilegedRoleAssignmentId("privilegedRoleAssignment-id").MakePermanent().Post(context.Background(), requestBody, nil)


```