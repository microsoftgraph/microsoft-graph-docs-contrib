---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtrustframework "github.com/microsoftgraph/msgraph-beta-sdk-go/trustframework"
	  //other-imports
)

requestBody := graphtrustframework.NewGenerateKeyPostRequestBody()
use := "sig"
requestBody.SetUse(&use) 
kty := "RSA"
requestBody.SetKty(&kty) 
nbf := int32(1508969811)
requestBody.SetNbf(&nbf) 
exp := int32(1508969811)
requestBody.SetExp(&exp) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
generateKey, err := graphClient.TrustFramework().KeySets().ByTrustFrameworkKeySetId("trustFrameworkKeySet-id").GenerateKey().Post(context.Background(), requestBody, nil)


```