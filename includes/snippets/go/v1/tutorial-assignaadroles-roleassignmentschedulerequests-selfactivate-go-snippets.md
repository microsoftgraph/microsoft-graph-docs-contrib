---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewUnifiedRoleAssignmentScheduleRequest()
action := graphmodels.SELFACTIVATE_UNIFIEDROLESCHEDULEREQUESTACTIONS 
requestBody.SetAction(&action) 
principalId := "d9771b4c-06c5-491a-92cb-3aa4e225a725"
requestBody.SetPrincipalId(&principalId) 
roleDefinitionId := "fe930be7-5e62-47db-91af-98c3a49a38b1"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
justification := "Need to invalidate all app refresh tokens for Contoso users."
requestBody.SetJustification(&justification) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2025-03-21T11:46:00.000Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.AFTERDURATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
duration , err := abstractions.ParseISODuration("PT5H")
expiration.SetDuration(&duration) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)
ticketInfo := graphmodels.NewTicketInfo()
ticketNumber := "CONTOSO:Security-012345"
ticketInfo.SetTicketNumber(&ticketNumber) 
ticketSystem := "Contoso ICM"
ticketInfo.SetTicketSystem(&ticketSystem) 
requestBody.SetTicketInfo(ticketInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignmentScheduleRequests, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Post(context.Background(), requestBody, nil)


```