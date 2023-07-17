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



requestFilter := "principalId eq '/ServicePrincipals/5d39cc4d-ba68-4c44-92c7-5056e3a1ce39'"

requestParameters := &graphrolemanagement.RoleManagementExchangeRoleAssignmentsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphrolemanagement.RoleManagementExchangeRoleAssignmentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.RoleManagement().Exchange().RoleAssignments().Get(context.Background(), configuration)


```