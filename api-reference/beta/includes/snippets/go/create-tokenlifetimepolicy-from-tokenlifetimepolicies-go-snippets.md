---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTokenLifetimePolicy()
definition := []string {
	"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}",
}
requestBody.SetDefinition(definition)
displayName := "Contoso token lifetime policy"
requestBody.SetDisplayName(&displayName) 
isOrganizationDefault := true
requestBody.SetIsOrganizationDefault(&isOrganizationDefault) 

tokenLifetimePolicies, err := graphClient.Policies().TokenLifetimePolicies().Post(context.Background(), requestBody, nil)


```