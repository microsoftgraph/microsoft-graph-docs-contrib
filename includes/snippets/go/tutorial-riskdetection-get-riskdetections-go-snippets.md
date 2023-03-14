---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestFilter := "userDisplayName eq 'MyTestUser1'"

requestParameters := &graphconfig.IdentityProtectionRiskDetectionsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
}
configuration := &graphconfig.IdentityProtectionRiskDetectionsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityProtection().RiskDetections().Get(context.Background(), configuration)


```