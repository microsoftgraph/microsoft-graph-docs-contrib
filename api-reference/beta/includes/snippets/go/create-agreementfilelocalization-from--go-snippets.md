---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAgreementFileLocalization()
fileName := "Contoso ToU for guest users (French)"
requestBody.SetFileName(&fileName)
language := "fr-FR"
requestBody.SetLanguage(&language)
isDefault := false
requestBody.SetIsDefault(&isDefault)
isMajorVersion := false
requestBody.SetIsMajorVersion(&isMajorVersion)
displayName := "Contoso ToU for guest users (French)"
requestBody.SetDisplayName(&displayName)
fileData := msgraphsdk.NewAgreementFileData()
requestBody.SetFileData(fileData)
data := []byte("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data")
fileData.SetData(&data)
agreementId := "agreement-id"
result, err := graphClient.IdentityGovernance().TermsOfUse().AgreementsById(&agreementId).Files().Post(requestBody)


```