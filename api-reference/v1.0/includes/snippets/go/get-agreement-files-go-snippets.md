---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestParameters := &graphconfig.IdentityGovernanceTermsOfUseAgreementItemRequestBuilderGetQueryParameters{
	Expand: [] string {"files"},
}
configuration := &graphconfig.IdentityGovernanceTermsOfUseAgreementItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().TermsOfUse().AgreementsById("agreement-id").Get(context.Background(), configuration)


```