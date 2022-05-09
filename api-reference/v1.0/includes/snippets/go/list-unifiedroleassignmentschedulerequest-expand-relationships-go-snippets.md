---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.RoleAssignmentScheduleRequestsRequestBuilderGetQueryParameters{
	Select: "principalId,action,roleDefinitionId",
	Expand: "roleDefinition,activatedUsing,principal,targetSchedule",
}
options := &msgraphsdk.RoleAssignmentScheduleRequestsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Get(options)


```