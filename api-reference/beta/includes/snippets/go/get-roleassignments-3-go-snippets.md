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



requestFilter := "appScopeId eq '/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'"

requestParameters := &graphrolemanagement.RoleManagementEntitlementManagementRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"principal"},
}
configuration := &graphrolemanagement.RoleManagementEntitlementManagementRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().EntitlementManagement().RoleAssignments().Get(context.Background(), configuration)


```