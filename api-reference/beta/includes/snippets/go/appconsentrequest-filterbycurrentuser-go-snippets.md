---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := "userConsentRequests/any"

requestParameters := &graphconfig.IdentityGovernanceAppConsentAppConsentRequestItemRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityGovernanceAppConsentAppConsentRequestItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequestsById("appConsentRequest-id").Get(context.Background(), configuration)


```