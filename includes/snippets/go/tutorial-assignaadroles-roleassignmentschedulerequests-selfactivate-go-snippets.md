---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleAssignmentScheduleRequest()
action := graphmodels.SELFACTIVATE_UNIFIEDROLESCHEDULEREQUESTACTIONS 
requestBody.SetAction(&action) 
principalId := "7146daa8-1b4b-4a66-b2f7-cf593d03c8d2"
requestBody.SetPrincipalId(&principalId) 
roleDefinitionId := "fe930be7-5e62-47db-91af-98c3a49a38b1"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
justification := "Need to invalidate all app refresh tokens for Contoso users."
requestBody.SetJustification(&justification) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2021-09-04T15:13:00.000Z")
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

result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Post(context.Background(), requestBody, nil)


```