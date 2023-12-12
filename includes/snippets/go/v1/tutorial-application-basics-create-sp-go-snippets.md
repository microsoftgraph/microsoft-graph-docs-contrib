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
appId := "fc876dd1-6bcb-4304-b9b6-18ddf1526b62"
requestBody.SetAppId(&appId) 

servicePrincipals, err := graphClient.ServicePrincipals().Post(context.Background(), requestBody, nil)


```