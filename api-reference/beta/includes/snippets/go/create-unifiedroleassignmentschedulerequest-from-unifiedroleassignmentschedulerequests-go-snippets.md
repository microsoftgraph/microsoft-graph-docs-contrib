---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleAssignmentScheduleRequest()
action := "AdminAssign"
requestBody.SetAction(&action) 
justification := "Assign User Admin to IT Helpdesk (User) group"
requestBody.SetJustification(&justification) 
roleDefinitionId := "fdd7a751-b60b-444a-984c-02652fe8fa1c"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
principalId := "07706ff1-46c7-4847-ae33-3003830675a1"
requestBody.SetPrincipalId(&principalId) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2021-07-01T00:00:00Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.NOEXPIRATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)

result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Post(context.Background(), requestBody, nil)


```