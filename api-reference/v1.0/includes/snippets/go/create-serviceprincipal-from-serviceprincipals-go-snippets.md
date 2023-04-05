---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewServicePrincipal()
appId := "65415bb1-9267-4313-bbf5-ae259732ee12"
requestBody.SetAppId(&appId) 

result, err := graphClient.ServicePrincipals().Post(context.Background(), requestBody, nil)


```