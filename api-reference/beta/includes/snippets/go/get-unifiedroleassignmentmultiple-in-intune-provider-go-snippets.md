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



requestFilter := " principalIds/any"

requestParameters := &graphconfig.RoleManagementDeviceManagementRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.RoleManagementDeviceManagementRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().Get(context.Background(), configuration)


```