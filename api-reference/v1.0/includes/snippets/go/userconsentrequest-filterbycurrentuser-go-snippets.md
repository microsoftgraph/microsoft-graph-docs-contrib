---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.UserConsentRequestRequestBuilderGetQueryParameters{
	Filter: " ",
}
configuration := &graphconfig.UserConsentRequestRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequestsById("appConsentRequest-id").UserConsentRequestsById("userConsentRequest-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```