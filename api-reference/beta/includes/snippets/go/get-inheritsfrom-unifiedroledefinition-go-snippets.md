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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphrolemanagement.RoleManagementDirectoryRoleDefinitionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"inheritsPermissionsFrom"},
}
configuration := &graphrolemanagement.RoleManagementDirectoryRoleDefinitionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleDefinitions().ByRoleDefinitionId("unifiedRoleDefinition-id").Get(context.Background(), configuration)


```