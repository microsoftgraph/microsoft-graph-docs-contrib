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



requestFilter := "roleDefinition/isPrivileged eq true"

requestParameters := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentsRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition"},
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleAssignments, err := graphClient.RoleManagement().Directory().RoleAssignments().Get(context.Background(), configuration)


```