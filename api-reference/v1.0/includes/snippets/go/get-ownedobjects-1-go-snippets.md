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



ownedObjects, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").OwnedObjects().Get(context.Background(), nil)


```