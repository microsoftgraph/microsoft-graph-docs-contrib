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



requestFilter := "groupId eq 'd5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc' and accessId eq 'member'"

requestParameters := &graphconfig.IdentityGovernancePrivilegedAccessGroupEligibilityScheduleItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernancePrivilegedAccessGroupEligibilityScheduleItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilitySchedules().ByEligibilityScheduleId("privilegedAccessGroupEligibilitySchedule-id").Get(context.Background(), configuration)


```