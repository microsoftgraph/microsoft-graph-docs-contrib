---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



riskyServicePrincipals, err := graphClient.IdentityProtection().RiskyServicePrincipals().ByRiskyServicePrincipalId("riskyServicePrincipal-id").Get(context.Background(), nil)


```