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



workflowTemplates, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowTemplates().Get(context.Background(), nil)


```