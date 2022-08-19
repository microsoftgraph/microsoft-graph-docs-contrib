---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AppConsentRequestsRequestBuilderGetQueryParameters{
	Filter: "userConsentRequests/any ",
}
configuration := &graphconfig.AppConsentRequestsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequests().GetWithRequestConfigurationAndResponseHandler(configuration, nil)


```