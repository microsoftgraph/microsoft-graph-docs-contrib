---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAgreement()
displayName := "Contoso ToU for guest users"
requestBody.SetDisplayName(&displayName)
isViewingBeforeAcceptanceRequired := true
requestBody.SetIsViewingBeforeAcceptanceRequired(&isViewingBeforeAcceptanceRequired)
requestBody.SetFiles( []AgreementFileLocalization {
	msgraphsdk.NewAgreementFileLocalization(),
	SetAdditionalData(map[string]interface{}{
		"fileName": "TOU.pdf",
		"language": "en",
		"isDefault": true,
	}
}
result, err := graphClient.IdentityGovernance().TermsOfUse().Agreements().Post(requestBody)


```