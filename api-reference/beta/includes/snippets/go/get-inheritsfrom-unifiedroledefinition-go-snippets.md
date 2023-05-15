---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/rolemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphconfig.RoleManagementDirectoryRoleDefinitionItemRequestBuilderGetQueryParameters{
	Expand: [] string {"inheritsPermissionsFrom"},
}
configuration := &graphconfig.RoleManagementDirectoryRoleDefinitionItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleDefinitions().ByRoleDefinitionId("unifiedRoleDefinition-id").Get(context.Background(), configuration)


```