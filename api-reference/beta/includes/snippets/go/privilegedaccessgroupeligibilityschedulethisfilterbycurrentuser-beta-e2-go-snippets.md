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



requestFilter := "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'"

requestParameters := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupEligibilitySchedulesFilterByCurrentUser(on='{on}')RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernancePrivilegedAccessGroupEligibilitySchedulesFilterByCurrentUser(on='{on}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

filterByCurrentUser(on='{on}'), err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilitySchedules().FilterByCurrentUser(on='{on}')().Get(context.Background(), configuration)


```