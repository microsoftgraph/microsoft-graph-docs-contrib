---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewKeyCredentialPostRequestBody()
keyCredential := graphmodels.NewKeyCredential()
type := "X509CertAndPassword"
keyCredential.SetType(&type) 
usage := "Sign"
keyCredential.SetUsage(&usage) 
key := []byte("mIIDYDCCAki...")
keyCredential.SetKey(&key) 
requestBody.SetKeyCredential(keyCredential)
passwordCredential := graphmodels.NewPasswordCredential()
secretText := "MKTr0w1..."
passwordCredential.SetSecretText(&secretText) 
requestBody.SetPasswordCredential(passwordCredential)
proof := "eyJ0eXAiOiJ..."
requestBody.SetProof(&proof) 

result, err := graphClient.ApplicationsById("application-id").AddKey().Post(requestBody)


```