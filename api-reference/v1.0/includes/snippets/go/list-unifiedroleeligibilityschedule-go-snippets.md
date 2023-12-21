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



roleEligibilitySchedules, err := graphClient.RoleManagement().Directory().RoleEligibilitySchedules().Get(context.Background(), nil)


```