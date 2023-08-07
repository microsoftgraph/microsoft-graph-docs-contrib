---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestFilter := " (status eq 'Completed')"

requestParameters := &graphidentitygovernance.IdentityGovernanceAppConsentAppConsentRequestItemUserConsentRequestsFilterByCurrentUser(on='{on}')RequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphidentitygovernance.IdentityGovernanceAppConsentAppConsentRequestItemUserConsentRequestsFilterByCurrentUser(on='{on}')RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

filterByCurrentUser(on='{on}'), err := graphClient.IdentityGovernance().AppConsent().AppConsentRequests().ByAppConsentRequestId("appConsentRequest-id").UserConsentRequests().FilterByCurrentUser(on='{on}')().Get(context.Background(), configuration)


```