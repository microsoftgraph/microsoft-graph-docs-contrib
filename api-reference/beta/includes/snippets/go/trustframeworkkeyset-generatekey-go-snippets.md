---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TrustFramework/KeySets/Item/GenerateKey"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGenerateKeyPostRequestBody()
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