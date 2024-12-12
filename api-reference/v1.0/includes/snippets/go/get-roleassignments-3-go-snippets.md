---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphrolemanagement "github.com/microsoftgraph/msgraph-sdk-go/rolemanagement"
	  //other-imports
)


requestFilter := "appScopeId eq '/AccessPackageCatalog/4cee616b-fdf9-4890-9d10-955e0ccb12bc'"

requestParameters := &graphrolemanagement.EntitlementManagementRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"principal"},
}
configuration := &graphrolemanagement.EntitlementManagementRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().EntitlementManagement().RoleAssignments().Get(context.Background(), configuration)


```