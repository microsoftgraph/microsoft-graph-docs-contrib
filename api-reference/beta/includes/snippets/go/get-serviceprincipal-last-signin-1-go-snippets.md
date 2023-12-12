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



servicePrincipalSignInActivities, err := graphClient.Reports().ServicePrincipalSignInActivities().ByServicePrincipalSignInActivityId("servicePrincipalSignInActivity-id").Get(context.Background(), nil)


```