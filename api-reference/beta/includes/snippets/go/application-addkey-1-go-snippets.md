---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphapplications "github.com/microsoftgraph/msgraph-beta-sdk-go/applications"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphapplications.NewAddKeyPostRequestBody()
keyCredential := graphmodels.NewKeyCredential()
type := "AsymmetricX509Cert"
keyCredential.SetType(&type) 
usage := "Verify"
keyCredential.SetUsage(&usage) 
key := []byte("mIIDYDCCAki...")
keyCredential.SetKey(&key) 
requestBody.SetKeyCredential(keyCredential)
passwordCredential := null
requestBody.SetPasswordCredential(&passwordCredential) 
proof := "eyJ0eXAiOiJ..."
requestBody.SetProof(&proof) 

addKey, err := graphClient.Applications().ByApplicationId("application-id").AddKey().Post(context.Background(), requestBody, nil)


```