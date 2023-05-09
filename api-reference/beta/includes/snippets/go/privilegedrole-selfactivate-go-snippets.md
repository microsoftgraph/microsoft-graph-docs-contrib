---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/PrivilegedRoles/Item/SelfActivate"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSelfActivatePostRequestBody()
reason := "reason-value"
requestBody.SetReason(&reason) 
duration := "duration-value"
requestBody.SetDuration(&duration) 
ticketNumber := "ticketNumber-value"
requestBody.SetTicketNumber(&ticketNumber) 
ticketSystem := "ticketSystem-value"
requestBody.SetTicketSystem(&ticketSystem) 

result, err := graphClient.PrivilegedRoles().ByPrivilegedRoleId("privilegedRole-id").SelfActivate().Post(context.Background(), requestBody, nil)


```