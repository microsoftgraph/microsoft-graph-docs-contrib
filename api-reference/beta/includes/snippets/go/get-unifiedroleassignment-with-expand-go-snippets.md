---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UnifiedRoleAssignmentMultipleRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition","principals","directoryScopes"},
}
configuration := &graphconfig.UnifiedRoleAssignmentMultipleRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignmentsById("unifiedRoleAssignmentMultiple-id").Get(context.Background(), configuration)


```