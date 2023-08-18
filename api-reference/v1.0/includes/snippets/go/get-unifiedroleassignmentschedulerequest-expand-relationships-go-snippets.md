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


requestParameters := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentScheduleRequestItemRequestBuilderGetQueryParameters{
	Select: [] string {"principalId","action","roleDefinitionId"},
	Expand: [] string {"roleDefinition","activatedUsing","principal","targetSchedule"},
}
configuration := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentScheduleRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleAssignmentScheduleRequests, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().ByUnifiedRoleAssignmentScheduleRequestId("unifiedRoleAssignmentScheduleRequest-id").Get(context.Background(), configuration)


```