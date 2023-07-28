---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphrolemanagement "github.com/microsoftgraph/msgraph-sdk-go/rolemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition"},
}
configuration := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleAssignments().ByRoleAssignmentId("unifiedRoleAssignment-id").Get(context.Background(), configuration)


```