---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphrolemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/rolemanagement"
	  //other-imports
)

requestParameters := &graphrolemanagement.DeviceManagementRoleAssignmentsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition","principals","directoryScopes"},
}
configuration := &graphrolemanagement.DeviceManagementRoleAssignmentsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().DeviceManagement().RoleAssignments().ByUnifiedRoleAssignmentMultipleId("unifiedRoleAssignmentMultiple-id").Get(context.Background(), configuration)


```