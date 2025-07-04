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


requestFilter := "isPrivileged eq true"

requestParameters := &graphrolemanagement.DirectoryResourceNamespacesItemResourceActionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.DirectoryResourceNamespacesItemResourceActionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceActions, err := graphClient.RoleManagement().Directory().ResourceNamespaces().ByUnifiedRbacResourceNamespaceId("unifiedRbacResourceNamespace-id").ResourceActions().Get(context.Background(), configuration)


```