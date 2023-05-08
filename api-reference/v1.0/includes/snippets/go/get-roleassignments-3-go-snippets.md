---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/rolemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "appScopeId eq '/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'"

requestParameters := &graphconfig.RoleManagementEntitlementManagementRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"principal"},
}
configuration := &graphconfig.RoleManagementEntitlementManagementRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().EntitlementManagement().RoleAssignments().Get(context.Background(), configuration)


```