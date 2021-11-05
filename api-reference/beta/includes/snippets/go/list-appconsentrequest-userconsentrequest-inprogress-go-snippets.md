---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.AppConsentRequestsRequestBuilderGetQueryParameters{
	Filter: "userConsentRequests/any%20",
}
options := &msgraphsdk.AppConsentRequestsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.IdentityGovernance().AppConsent().AppConsentRequests().Get(options);


```