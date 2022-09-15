---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


requestFilter := " "

requestParameters := &graphconfig.UserConsentRequestRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.UserConsentRequestRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequestsById("appConsentRequest-id").UserConsentRequestsById("userConsentRequest-id").Get(context.Background(), configuration)


```