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



tokenLifetimePolicies, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").TokenLifetimePolicies().Get(context.Background(), nil)


```