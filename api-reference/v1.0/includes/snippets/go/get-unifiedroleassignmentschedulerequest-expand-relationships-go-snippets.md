---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.RoleManagementDirectoryRoleAssignmentScheduleRequestItemRequestBuilderGetQueryParameters{
	Select: [] string {"principalId","action","roleDefinitionId"},
	Expand: [] string {"roleDefinition","activatedUsing","principal","targetSchedule"},
}
configuration := &graphconfig.RoleManagementDirectoryRoleAssignmentScheduleRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequestsById("unifiedRoleAssignmentScheduleRequest-id").Get(context.Background(), configuration)


```