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


requestParameters := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilderGetQueryParameters{
	Select: [] string {"principalId","action","groupId"},
}
configuration := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupEligibilityScheduleRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

eligibilityScheduleRequests, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilityScheduleRequests().ByPrivilegedAccessGroupEligibilityScheduleRequestId("privilegedAccessGroupEligibilityScheduleRequest-id").Get(context.Background(), configuration)


```