---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.AgreementRequestBuilderGetQueryParameters{
	Expand: "files",
}
options := &msgraphsdk.AgreementRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}
agreementId := "agreement-id"
result, err := graphClient.IdentityGovernance().TermsOfUse().AgreementsById(&agreementId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```