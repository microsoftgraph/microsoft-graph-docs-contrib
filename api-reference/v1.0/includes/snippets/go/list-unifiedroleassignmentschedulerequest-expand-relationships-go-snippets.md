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


requestParameters := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentScheduleRequestsRequestBuilderGetQueryParameters{
	Select: [] string {"principalId","action","roleDefinitionId"},
	Expand: [] string {"roleDefinition","activatedUsing","principal","targetSchedule"},
}
configuration := &graphrolemanagement.RoleManagementDirectoryRoleAssignmentScheduleRequestsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleAssignmentScheduleRequests, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().Get(context.Background(), configuration)


```