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


requestBody := graphtrustframework.NewUploadPkcs12PostRequestBody()
key := "Base64-encoded-pfx-content"
requestBody.SetKey(&key) 
password := "password-value"
requestBody.SetPassword(&password) 

result, err := graphClient.TrustFramework().KeySets().ByKeySetId("trustFrameworkKeySet-id").UploadPkcs12().Post(context.Background(), requestBody, nil)


```