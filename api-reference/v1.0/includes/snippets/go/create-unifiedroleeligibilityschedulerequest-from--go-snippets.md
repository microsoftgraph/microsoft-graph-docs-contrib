---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUnifiedRoleEligibilityScheduleRequest()
action := "adminAssign"
requestBody.SetAction(&action)
justification := "Assign Attribute Assignment Admin eligibility to restricted user"
requestBody.SetJustification(&justification)
roleDefinitionId := "8424c6f0-a189-499e-bbd0-26c1753c96d4"
requestBody.SetRoleDefinitionId(&roleDefinitionId)
directoryScopeId := "/"
requestBody.SetDirectoryScopeId(&directoryScopeId)
principalId := "071cc716-8147-4397-a5ba-b2105951cc0b"
requestBody.SetPrincipalId(&principalId)
scheduleInfo := msgraphsdk.NewRequestSchedule()
requestBody.SetScheduleInfo(scheduleInfo)
startDateTime, err := time.Parse(time.RFC3339, "2022-04-10T00:00:00Z")
scheduleInfo.SetStartDateTime(&startDateTime)
expiration := msgraphsdk.NewExpirationPattern()
scheduleInfo.SetExpiration(expiration)
type := "afterDateTime"
expiration.SetType(&type)
endDateTime, err := time.Parse(time.RFC3339, "2024-04-10T00:00:00Z")
expiration.SetEndDateTime(&endDateTime)
result, err := graphClient.RoleManagement().Directory().RoleEligibilityScheduleRequests().Post(requestBody)


```