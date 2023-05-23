---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'"

requestParameters := &graphconfig.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleInstancesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernancePrivilegedAccessGroupAssignmentScheduleInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().AssignmentScheduleInstances().Get(context.Background(), configuration)


```