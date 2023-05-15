---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TrustFramework/KeySets/Item/UploadPkcs12"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUploadPkcs12PostRequestBody()
key := "Base64-encoded-pfx-content"
requestBody.SetKey(&key) 
password := "password-value"
requestBody.SetPassword(&password) 

result, err := graphClient.TrustFramework().KeySets().ByKeySetId("trustFrameworkKeySet-id").UploadPkcs12().Post(context.Background(), requestBody, nil)


```