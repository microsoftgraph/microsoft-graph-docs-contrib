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



authenticationMethodModes, err := graphClient.Identity().ConditionalAccess().AuthenticationStrength().AuthenticationMethodModes().Get(context.Background(), nil)


```