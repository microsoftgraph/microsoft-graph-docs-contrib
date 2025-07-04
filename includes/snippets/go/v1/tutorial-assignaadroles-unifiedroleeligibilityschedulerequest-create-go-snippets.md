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

requestBody := graphmodels.NewUnifiedRoleEligibilityScheduleRequest()
action := graphmodels.ADMINASSIGN_UNIFIEDROLESCHEDULEREQUESTACTIONS 
requestBody.SetAction(&action) 
justification := "Assign User Admin eligibility to IT Helpdesk (User) group"
requestBody.SetJustification(&justification) 
roleDefinitionId := "fe930be7-5e62-47db-91af-98c3a49a38b1"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
principalId := "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3"
requestBody.SetPrincipalId(&principalId) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2025-03-21T11:06:00Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
endDateTime , err := time.Parse(time.RFC3339, "2026-03-21T00:00:00Z")
expiration.SetEndDateTime(&endDateTime) 
type := graphmodels.AFTERDATETIME_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleEligibilityScheduleRequests, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleRequests().Post(context.Background(), requestBody, nil)


```