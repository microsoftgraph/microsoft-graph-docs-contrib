---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UnifiedRoleAssignmentScheduleRequestRequestBuilderGetQueryParameters{
	Select: "principalId,action,roleDefinitionId",
	Expand: "roleDefinition,activatedUsing,principal,targetSchedule",
}
options := &msgraphsdk.UnifiedRoleAssignmentScheduleRequestRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
unifiedRoleAssignmentScheduleRequestId := "unifiedRoleAssignmentScheduleRequest-id"
result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequestsById(&unifiedRoleAssignmentScheduleRequestId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```