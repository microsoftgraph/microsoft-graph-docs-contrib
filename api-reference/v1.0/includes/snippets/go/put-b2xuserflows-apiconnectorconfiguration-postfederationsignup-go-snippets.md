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


requestBody := graphmodels.NewReferenceUpdate()
odataId := "https://graph.microsoft.com/v1.0/identity/apiConnectors/{id}"
requestBody.SetOdataId(&odataId) 

graphClient.Identity().B2xUserFlows().ByB2xIdentityUserFlowId("b2xIdentityUserFlow-id").ApiConnectorConfiguration().PostFederationSignup().Ref().Put(context.Background(), requestBody, nil)


```