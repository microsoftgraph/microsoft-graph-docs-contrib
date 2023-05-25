---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/IdentityGovernance/LifecycleWorkflows/Workflows/Item/Tasks/Item/TaskProcessingResults/Item/MicrosoftGraphIdentityGovernanceResume"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewResumePostRequestBody()
data := graphmodels.NewCustomTaskExtensionCallbackData()
operationStatus := graphmodels.COMPLETED_CUSTOMTASKEXTENSIONOPERATIONSTATUS 
data.SetOperationStatus(&operationStatus) 
requestBody.SetData(data)
source := "sample"
requestBody.SetSource(&source) 
type := "lifecycleEvent"
requestBody.SetType(&type) 

graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").Tasks().ByTaskId("task-id").TaskProcessingResults().ByTaskProcessingResultId("taskProcessingResult-id").MicrosoftGraphIdentityGovernanceResume().Post(context.Background(), requestBody, nil)


```