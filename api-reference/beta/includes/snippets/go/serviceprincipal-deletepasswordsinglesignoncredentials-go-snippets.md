---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/ServicePrincipals/Item/DeletePasswordSingleSignOnCredentials"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeletePasswordSingleSignOnCredentialsPostRequestBody()
id := "5793aa3b-cca9-4794-679a240f8b58"
requestBody.SetId(&id) 

graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").DeletePasswordSingleSignOnCredentials().Post(context.Background(), requestBody, nil)


```