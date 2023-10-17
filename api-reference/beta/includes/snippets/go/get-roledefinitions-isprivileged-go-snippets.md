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

requestParameters := &graphrolemanagement.RoleManagementDirectoryRoleDefinitionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.RoleManagementDirectoryRoleDefinitionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

roleDefinitions, err := graphClient.RoleManagement().Directory().RoleDefinitions().Get(context.Background(), configuration)


```