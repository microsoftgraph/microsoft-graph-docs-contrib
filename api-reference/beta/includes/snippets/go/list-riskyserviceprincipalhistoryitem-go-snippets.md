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



result, err := graphClient.IdentityProtection().RiskyServicePrincipals().ByRiskyServicePrincipalId("riskyServicePrincipal-id").History().Get(context.Background(), nil)


```