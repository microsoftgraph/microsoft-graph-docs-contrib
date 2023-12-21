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



oauth2PermissionGrants, err := graphClient.ServicePrincipals().ByServicePrincipalId("servicePrincipal-id").Oauth2PermissionGrants().Get(context.Background(), nil)


```