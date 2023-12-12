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



pin, err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").Modules().ByEducationModuleId("educationModule-id").Pin().Post(context.Background(), nil)


```