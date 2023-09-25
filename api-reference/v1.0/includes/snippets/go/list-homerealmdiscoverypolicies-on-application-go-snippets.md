---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



homeRealmDiscoveryPolicies, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").HomeRealmDiscoveryPolicies().Get(context.Background(), nil)


```