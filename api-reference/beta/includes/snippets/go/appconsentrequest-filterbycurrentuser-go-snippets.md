---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.AppConsentRequestRequestBuilderGetQueryParameters{
	Filter: "userConsentRequests/any",
}
options := &msgraphsdk.AppConsentRequestRequestBuilderGetOptions{
	Q: requestParameters,
}
appConsentRequestId := "appConsentRequest-id"
result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequestsById(&appConsentRequestId).Get(options);


```