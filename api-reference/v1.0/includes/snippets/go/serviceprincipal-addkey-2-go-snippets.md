---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphserviceprincipals.NewAddKeyPostRequestBody()
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

addKey, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AddKey().Post(context.Background(), requestBody, nil)


```