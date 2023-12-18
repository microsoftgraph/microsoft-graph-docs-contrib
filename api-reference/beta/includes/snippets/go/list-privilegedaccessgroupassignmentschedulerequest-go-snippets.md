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



requestFilter := "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d' and principalId eq '3cce9d87-3986-4f19-8335-7ed075408ca2'"

requestParameters := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleRequestsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleRequestsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

assignmentScheduleRequests, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleRequests().Get(context.Background(), configuration)


```