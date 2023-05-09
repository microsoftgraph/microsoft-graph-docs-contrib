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


requestParameters := &graphconfig.RoleManagementDirectoryRoleAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition"},
}
configuration := &graphconfig.RoleManagementDirectoryRoleAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Directory().RoleAssignments().ByRoleAssignmentId("unifiedRoleAssignment-id").Get(context.Background(), configuration)


```