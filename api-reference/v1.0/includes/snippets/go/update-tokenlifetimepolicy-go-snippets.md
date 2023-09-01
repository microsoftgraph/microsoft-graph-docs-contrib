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


requestBody := graphmodels.NewTokenLifetimePolicy()
definition := []string {
	"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"5:30:00\"}}",
}
requestBody.SetDefinition(definition)
displayName := "Contoso token lifetime policy"
requestBody.SetDisplayName(&displayName) 
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault) 

tokenLifetimePolicies, err := graphClient.Policies().TokenLifetimePolicies().ByTokenLifetimePolicyId("tokenLifetimePolicy-id").Patch(context.Background(), requestBody, nil)


```