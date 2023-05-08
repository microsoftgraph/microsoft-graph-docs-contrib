---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TrustFramework/KeySets/Item/UploadSecret"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUploadSecretPostRequestBody()
use := "use-value"
requestBody.SetUse(&use) 
k := "application-secret-to-be-uploaded"
requestBody.SetK(&k) 
nbf := int64(1508969811)
requestBody.SetNbf(&nbf) 
exp := int64(1508973711)
requestBody.SetExp(&exp) 

result, err := graphClient.TrustFramework().KeySets().ByKeySetId("trustFrameworkKeySet-id").UploadSecret().Post(context.Background(), requestBody, nil)


```