---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/AddTokenSigningCertificate"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddTokenSigningCertificatePostRequestBody()
displayName := "CN=customDisplayName"
requestBody.SetDisplayName(&displayName) 
endDateTime , err := time.Parse(time.RFC3339, "2024-01-25T00:00:00Z")
requestBody.SetEndDateTime(&endDateTime) 

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AddTokenSigningCertificate().Post(context.Background(), requestBody, nil)


```