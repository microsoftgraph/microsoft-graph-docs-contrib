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

requestParameters := &graphrolemanagement.DirectoryRoleAssignmentScheduleRequestsFilterByCurrentUserWithOnRequestBuilderGetQueryParameters{
	Expand: [] string {"roleDefinition"},
}
configuration := &graphrolemanagement.DirectoryRoleAssignmentScheduleRequestsFilterByCurrentUserWithOnRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
on := "principal"
filterByCurrentUser, err := graphClient.RoleManagement().Directory().RoleAssignmentScheduleRequests().FilterByCurrentUserWithOn(&on).GetAsFilterByCurrentUserWithOnGetResponse(context.Background(), configuration)


```