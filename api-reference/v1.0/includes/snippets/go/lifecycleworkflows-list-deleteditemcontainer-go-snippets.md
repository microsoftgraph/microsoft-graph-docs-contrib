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



workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().DeletedItems().Workflows().Get(context.Background(), nil)


```