---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/ServicePrincipals/Item/AddPassword"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddPasswordPostRequestBody()
passwordCredential := graphmodels.NewPasswordCredential()
displayName := "Password friendly name"
passwordCredential.SetDisplayName(&displayName) 
requestBody.SetPasswordCredential(passwordCredential)

result, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").AddPassword().Post(context.Background(), requestBody, nil)


```