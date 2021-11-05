---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"action": "SelfActivate",
	"principalId": "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
	"roleDefinitionId": "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
	"directoryScopeId": "/",
	"justification": "Need to update app roles for selected apps.",
}
options := &msgraphsdk.UnifiedRoleAssignmentScheduleRequestRequestBuilderPostOptions{
	Body: requestBody,
}
unifiedRoleAssignmentScheduleRequestId := "unifiedRoleAssignmentScheduleRequest-id"
graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequestsById(&unifiedRoleAssignmentScheduleRequestId).Post(options);


```