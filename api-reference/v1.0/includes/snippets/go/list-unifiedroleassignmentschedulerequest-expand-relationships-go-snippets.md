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
options := &msgraphsdk.RoleAssignmentScheduleRequestsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
result, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().GetWithRequestConfigurationAndResponseHandler(options, nil)


```