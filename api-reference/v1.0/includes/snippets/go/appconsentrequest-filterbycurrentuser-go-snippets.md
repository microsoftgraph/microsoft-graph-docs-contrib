---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AppConsentRequestRequestBuilderGetQueryParameters{
	Filter: "userConsentRequests/any",
}
configuration := &graphconfig.AppConsentRequestRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequestsById("appConsentRequest-id").GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```