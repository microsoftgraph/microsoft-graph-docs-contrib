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


requestBody := graphmodels.NewUnifiedRoleEligibilityScheduleRequest()
action := graphmodels.ADMINASSIGN_UNIFIEDROLESCHEDULEREQUESTACTIONS 
requestBody.SetAction(&action) 
justification := "Assign User Admin eligibility to IT Helpdesk (User) group"
requestBody.SetJustification(&justification) 
roleDefinitionId := "fe930be7-5e62-47db-91af-98c3a49a38b1"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
principalId := "e77cbb23-0ff2-4e18-819c-690f58269752"
requestBody.SetPrincipalId(&principalId) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2021-07-01T00:00:00Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
endDateTime , err := time.Parse(time.RFC3339, "2022-06-30T00:00:00Z")
expiration.SetEndDateTime(&endDateTime) 
type := graphmodels.AFTERDATETIME_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)

result, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleRequests().Post(context.Background(), requestBody, nil)


```