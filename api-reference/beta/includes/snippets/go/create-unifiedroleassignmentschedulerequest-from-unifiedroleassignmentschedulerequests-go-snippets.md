---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"action": "AdminAssign",
	"justification": "Assign User Admin to IT Helpdesk (User) group",
	"roleDefinitionId": "fdd7a751-b60b-444a-984c-02652fe8fa1c",
	"directoryScopeId": "/",
	"principalId": "07706ff1-46c7-4847-ae33-3003830675a1",
}
options := &msgraphsdk.UnifiedRoleAssignmentScheduleRequestRequestBuilderPostOptions{
	Body: requestBody,
}
unifiedRoleAssignmentScheduleRequestId := "unifiedRoleAssignmentScheduleRequest-id"
graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequestsById(&unifiedRoleAssignmentScheduleRequestId).Post(options);


```