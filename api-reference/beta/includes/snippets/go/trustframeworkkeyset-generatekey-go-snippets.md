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


requestBody := graphtrustframework.NewGenerateKeyPostRequestBody()
use := "sig"
requestBody.SetUse(&use) 
kty := "RSA"
requestBody.SetKty(&kty) 
nbf := int64(1508969811)
requestBody.SetNbf(&nbf) 
exp := int64(1508969811)
requestBody.SetExp(&exp) 

result, err := graphClient.TrustFramework().KeySets().ByKeySetId("trustFrameworkKeySet-id").GenerateKey().Post(context.Background(), requestBody, nil)


```