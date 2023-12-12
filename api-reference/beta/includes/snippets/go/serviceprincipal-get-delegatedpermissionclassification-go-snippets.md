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



delegatedPermissionClassifications, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").DelegatedPermissionClassifications().Get(context.Background(), nil)


```