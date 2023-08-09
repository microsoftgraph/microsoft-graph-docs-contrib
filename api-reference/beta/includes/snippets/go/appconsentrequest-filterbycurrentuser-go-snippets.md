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



requestFilter := "userConsentRequests/any(u:u/status eq 'InProgress')"

requestParameters := &graphidentitygovernance.IdentityGovernanceAppConsentAppConsentRequestsFilterByCurrentUser(on='{on}')RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceAppConsentAppConsentRequestsFilterByCurrentUser(on='{on}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

filterByCurrentUser(on='{on}'), err := graphClient.IdentityGovernance().AppConsent().AppConsentRequests().FilterByCurrentUser(on='{on}')().Get(context.Background(), configuration)


```