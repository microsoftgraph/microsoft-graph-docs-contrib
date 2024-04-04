---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/models/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsidentitygovernance.NewWorkflow()
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := true
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 

workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Patch(context.Background(), requestBody, nil)


```