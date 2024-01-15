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



loginPages, err := graphClient.Security().AttackSimulation().LoginPages().ByLoginPageId("loginPage-id").Get(context.Background(), nil)


```