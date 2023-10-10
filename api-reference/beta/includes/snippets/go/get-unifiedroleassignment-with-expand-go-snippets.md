---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphrolemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/rolemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphrolemanagement.RoleManagementDeviceManagementRoleAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition","principals","directoryScopes"},
}
configuration := &graphrolemanagement.RoleManagementDeviceManagementRoleAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleAssignments, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().ByUnifiedRoleAssignmentMultipleId("unifiedRoleAssignmentMultiple-id").Get(context.Background(), configuration)


```