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



requestFilter := "roleDefinitionId eq 'b5c08161-a7af-481c-ace2-a20a69a48fb1'"

requestParameters := &graphrolemanagement.RoleManagementCloudPCRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.RoleManagementCloudPCRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().CloudPC().RoleAssignments().Get(context.Background(), configuration)


```