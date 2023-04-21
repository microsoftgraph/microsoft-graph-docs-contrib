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


requestParameters := &graphconfig.RoleManagementDeviceManagementRoleAssignmentItemRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition","principals","directoryScopes"},
}
configuration := &graphconfig.RoleManagementDeviceManagementRoleAssignmentItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().ByRoleAssignmentId("unifiedRoleAssignmentMultiple-id").Get(context.Background(), configuration)


```