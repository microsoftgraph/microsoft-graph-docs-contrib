---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TrustFramework/KeySets/Item/UploadCertificate"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUploadCertificatePostRequestBody()
key := "key-value"
requestBody.SetKey(&key) 

result, err := graphClient.TrustFramework().KeySets().ByKeySetId("trustFrameworkKeySet-id").UploadCertificate().Post(context.Background(), requestBody, nil)


```