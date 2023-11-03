---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewServicePrincipal()
appId := "0bf30f3b-4a52-48df-9a82-234910c4a086"
requestBody.SetAppId(&appId) 

servicePrincipals, err := graphClient.ServicePrincipals().Post(context.Background(), requestBody, nil)


```