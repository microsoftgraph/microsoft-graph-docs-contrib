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


requestFilter := "principalId eq '/ServicePrincipals/5d39cc4d-ba68-4c44-92c7-5056e3a1ce39'"

requestParameters := &graphrolemanagement.ExchangeRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.ExchangeRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleAssignments, err := graphClient.RoleManagement().Exchange().RoleAssignments().Get(context.Background(), configuration)


```