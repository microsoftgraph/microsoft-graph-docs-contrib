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



requestFilter := "isPrivileged eq true"

requestParameters := &graphrolemanagement.RoleManagementDirectoryResourceNamespaceItemResourceActionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.RoleManagementDirectoryResourceNamespaceItemResourceActionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

resourceActions, err := graphClient.RoleManagement().Directory().ResourceNamespaces().ByUnifiedRbacResourceNamespaceId("unifiedRbacResourceNamespace-id").ResourceActions().Get(context.Background(), configuration)


```