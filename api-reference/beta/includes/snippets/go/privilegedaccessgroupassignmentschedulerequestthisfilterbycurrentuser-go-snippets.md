---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "status eq 'PendingApproval' and groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc'"

requestParameters := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleRequestsFilterByCurrentUser(on='{on}')RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleRequestsFilterByCurrentUser(on='{on}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

filterByCurrentUser(on='{on}'), err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleRequests().FilterByCurrentUser(on='{on}')().Get(context.Background(), configuration)


```