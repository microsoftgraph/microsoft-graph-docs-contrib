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



getManagedAppDiagnosticStatuses(), err := graphClient.Users().ByUserId("user-id").GetManagedAppDiagnosticStatuses().Get(context.Background(), nil)


```