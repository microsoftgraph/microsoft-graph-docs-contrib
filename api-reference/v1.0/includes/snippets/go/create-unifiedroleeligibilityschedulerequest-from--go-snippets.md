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
justification := "Assign Attribute Assignment Admin eligibility to restricted user"
requestBody.SetJustification(&justification) 
roleDefinitionId := "8424c6f0-a189-499e-bbd0-26c1753c96d4"
requestBody.SetRoleDefinitionId(&roleDefinitionId) 
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId) 
principalId := "071cc716-8147-4397-a5ba-b2105951cc0b"
requestBody.SetPrincipalId(&principalId) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2022-04-10T00:00:00Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.AFTERDATETIME_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
endDateTime , err := time.Parse(time.RFC3339, "2024-04-10T00:00:00Z")
expiration.SetEndDateTime(&endDateTime) 
scheduleInfo.SetExpiration(expiration)
requestBody.SetScheduleInfo(scheduleInfo)

result, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleRequests().Post(context.Background(), requestBody, nil)


```