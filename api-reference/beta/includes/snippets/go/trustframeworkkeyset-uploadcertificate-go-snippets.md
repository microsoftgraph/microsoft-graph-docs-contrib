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


requestBody := graphtrustframework.NewUploadCertificatePostRequestBody()
key := "key-value"
requestBody.SetKey(&key) 

uploadCertificate, err := graphClient.TrustFramework().KeySets().ByTrustFrameworkKeySetId("trustFrameworkKeySet-id").UploadCertificate().Post(context.Background(), requestBody, nil)


```