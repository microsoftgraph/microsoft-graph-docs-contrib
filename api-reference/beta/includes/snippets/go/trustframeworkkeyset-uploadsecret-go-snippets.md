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

requestBody := graphtrustframework.NewUploadSecretPostRequestBody()
use := "use-value"
requestBody.SetUse(&use) 
k := "application-secret-to-be-uploaded"
requestBody.SetK(&k) 
nbf := int64(1508969811)
requestBody.SetNbf(&nbf) 
exp := int64(1508973711)
requestBody.SetExp(&exp) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
uploadSecret, err := graphClient.TrustFramework().KeySets().ByTrustFrameworkKeySetId("trustFrameworkKeySet-id").UploadSecret().Post(context.Background(), requestBody, nil)


```