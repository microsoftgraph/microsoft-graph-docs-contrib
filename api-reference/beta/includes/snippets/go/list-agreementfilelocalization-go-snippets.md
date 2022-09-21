---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &graphconfig.AgreementRequestBuilderGetQueryParameters{
	Expand: [] string {"files"},
}
configuration := &graphconfig.AgreementRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().TermsOfUse().AgreementsById("agreement-id").Get(context.Background(), configuration)


```