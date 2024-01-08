---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtrustframework "github.com/microsoftgraph/msgraph-beta-sdk-go/trustframework"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphtrustframework.NewUploadSecretPostRequestBody()
use := "use-value"
requestBody.SetUse(&use) 
k := "application-secret-to-be-uploaded"
requestBody.SetK(&k) 
nbf := int64(1508969811)
requestBody.SetNbf(&nbf) 
exp := int64(1508973711)
requestBody.SetExp(&exp) 

uploadSecret, err := graphClient.TrustFramework().KeySets().ByTrustFrameworkKeySetId("trustFrameworkKeySet-id").UploadSecret().Post(context.Background(), requestBody, nil)


```