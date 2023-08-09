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



taughtClasses, err := graphClient.Education().Users().ByEducationUserId("educationUser-id").TaughtClasses().Get(context.Background(), nil)


```