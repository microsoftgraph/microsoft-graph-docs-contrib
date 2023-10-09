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



requestFilter := "groupId eq '2b5ed229-4072-478d-9504-a047ebd4b07d'"

requestParameters := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupEligibilityScheduleInstancesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupEligibilityScheduleInstancesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

eligibilityScheduleInstances, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilityScheduleInstances().Get(context.Background(), configuration)


```