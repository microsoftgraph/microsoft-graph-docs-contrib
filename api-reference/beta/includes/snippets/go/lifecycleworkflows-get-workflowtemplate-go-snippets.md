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



workflowTemplates, err := graphClient.IdentityGovernance().LifecycleWorkflows().WorkflowTemplates().ByWorkflowTemplateId("workflowTemplate-id").Get(context.Background(), nil)


```