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
principalId := "071cc716-8147-4397-a5ba-b2105951cc0b"
requestBody.SetPrincipalId(&principalId) 
roleDefinitionId := "8424c6f0-a189-499e-bbd0-26c1753c96d4"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
justification := "I need access to the Attribute Administrator role to manage attributes to be assigned to restricted AUs"
requestBody.SetJustification(&justification) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2022-04-14T00:00:00.000Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.AFTERDURATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
duration , err := abstractions.ParseISODuration("PT5H")
expiration.SetDuration(&duration) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)
ticketInfo := graphmodels.NewTicketInfo()
ticketNumber := "CONTOSO:Normal-67890"
ticketInfo.SetTicketNumber(&ticketNumber) 
ticketSystem := "MS Project"
ticketInfo.SetTicketSystem(&ticketSystem) 
requestBody.SetTicketInfo(ticketInfo)

result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Post(context.Background(), requestBody, nil)


```