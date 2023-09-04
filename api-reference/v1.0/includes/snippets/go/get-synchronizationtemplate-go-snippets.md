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



templates, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Synchronization().Templates().Get(context.Background(), nil)


```