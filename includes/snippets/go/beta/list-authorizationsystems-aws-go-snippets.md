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



authorizationSystems, err := graphClient.External().AuthorizationSystems().ByAuthorizationSystemId("authorizationSystem-id").Get(context.Background(), nil)


```