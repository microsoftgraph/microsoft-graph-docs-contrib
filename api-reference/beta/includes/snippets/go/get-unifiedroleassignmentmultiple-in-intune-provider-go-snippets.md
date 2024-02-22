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



requestFilter := " principalIds/any(x:x eq '564ae70c-73d9-476b-820b-fb61eb7384b9')"

requestParameters := &graphrolemanagement.RoleManagementDeviceManagementRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.RoleManagementDeviceManagementRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleAssignments, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().Get(context.Background(), configuration)


```