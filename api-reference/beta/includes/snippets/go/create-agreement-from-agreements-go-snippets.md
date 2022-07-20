---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAgreement()
displayName := "Contoso ToU for guest users"
requestBody.SetDisplayName(&displayName) 
isViewingBeforeAcceptanceRequired := true
requestBody.SetIsViewingBeforeAcceptanceRequired(&isViewingBeforeAcceptanceRequired) 


agreementFileLocalization := graphmodels.NewAgreementFileLocalization()
additionalData := map[string]interface{}{
	"fileName" : "TOU.pdf", 
	"language" : "en", 
	isDefault := true
agreementFileLocalization.SetIsDefault(&isDefault) 
fileData := graphmodels.New()
data := "SGVsbG8gd29ybGQ=//truncated-binary"
fileData.SetData(&data) 
	agreementFileLocalization.SetFileData(fileData)
}
agreementFileLocalization.SetAdditionalData(additionalData)

files := []graphmodels.AgreementFileLocalizationable {
	agreementFileLocalization,

}
requestBody.SetFiles(files)

result, err := graphClient.IdentityGovernance().TermsOfUse().Agreements().Post(requestBody)


```