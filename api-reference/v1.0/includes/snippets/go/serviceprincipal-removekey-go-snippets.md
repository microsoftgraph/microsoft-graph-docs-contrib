---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "github.com/google/uuid"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphserviceprincipals "github.com/microsoftgraph/msgraph-sdk-go/serviceprincipals"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphserviceprincipals.NewRemoveKeyPostRequestBody()
keyId := uuid.MustParse("f0b0b335-1d71-4883-8f98-567911bfdca6")
requestBody.SetKeyId(&keyId) 
proof := "eyJ0eXAiOiJ..."
requestBody.SetProof(&proof) 

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").RemoveKey().Post(context.Background(), requestBody, nil)


```