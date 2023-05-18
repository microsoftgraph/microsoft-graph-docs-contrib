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


requestParameters := &graphconfig.IdentityGovernancePrivilegedAccessGroupEligibilitySchedulesRequestBuilderGetQueryParameters{
	Select: [] string {"accessId","principalId","groupId"},
}
configuration := &graphconfig.IdentityGovernancePrivilegedAccessGroupEligibilitySchedulesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().PrivilegedAccess().Group().EligibilitySchedules().Get(context.Background(), configuration)


```