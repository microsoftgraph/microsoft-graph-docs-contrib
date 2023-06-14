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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "status eq 'PendingApproval' and groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc'"

requestParameters := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleRequestItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleRequests().ByAssignmentScheduleRequestId("privilegedAccessGroupAssignmentScheduleRequest-id").Get(context.Background(), configuration)


```