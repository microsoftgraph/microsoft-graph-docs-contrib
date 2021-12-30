---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
keyCredential := msgraphsdk.NewKeyCredential()
requestBody.SetKeyCredential(keyCredential)
type := "X509CertAndPassword"
keyCredential.SetType(&type)
usage := "Sign"
keyCredential.SetUsage(&usage)
key := []byte("MIIDYDCCAki...")
keyCredential.SetKey(&key)
passwordCredential := msgraphsdk.NewPasswordCredential()
requestBody.SetPasswordCredential(passwordCredential)
secretText := "MKTr0w1..."
passwordCredential.SetSecretText(&secretText)
proof := "eyJ0eXAiOiJ..."
requestBody.SetProof(&proof)
options := &msgraphsdk.AddKeyRequestBuilderPostOptions{
	Body: requestBody,
}
applicationId := "application-id"
result, err := graphClient.ApplicationsById(&applicationId).AddKey().Post(options)


```