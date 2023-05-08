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
action := graphmodels.ADMINASSIGN_UNIFIEDROLESCHEDULEREQUESTACTIONS 
requestBody.SetAction(&action) 
justification := "Assign Groups Admin to IT Helpdesk group"
requestBody.SetJustification(&justification) 
roleDefinitionId := "fdd7a751-b60b-444a-984c-02652fe8fa1c"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
principalId := "071cc716-8147-4397-a5ba-b2105951cc0b"
requestBody.SetPrincipalId(&principalId) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2022-04-10T00:00:00Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.NOEXPIRATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)

result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Post(context.Background(), requestBody, nil)


```