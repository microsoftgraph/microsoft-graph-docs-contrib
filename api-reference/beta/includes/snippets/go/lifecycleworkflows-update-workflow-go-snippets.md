---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsidentitygovernance.NewWorkflow()
description := "Configure new hire tasks for onboarding employees on their first day"
requestBody.SetDescription(&description) 
displayName := "Australia Onboard new hire employee"
requestBody.SetDisplayName(&displayName) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Patch(context.Background(), requestBody, nil)


```