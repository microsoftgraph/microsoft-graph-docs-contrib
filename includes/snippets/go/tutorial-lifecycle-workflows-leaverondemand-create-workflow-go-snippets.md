---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//identityGovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewWorkflow()
category := graphmodels.LEAVER_LIFECYCLEWORKFLOWCATEGORY 
requestBody.SetCategory(&category) 
displayName := "Real-time employee termination"
requestBody.SetDisplayName(&displayName) 
description := "Execute real-time termination tasks for employees on their last day of work"
requestBody.SetDescription(&description) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodels.NewWorkflowExecutionConditions()
requestBody.SetExecutionConditions(executionConditions)


task := graphmodels.NewTask()
continueOnError := false
task.SetContinueOnError(&continueOnError) 
description := "Remove user from all Azure AD groups memberships"
task.SetDescription(&description) 
displayName := "Remove user from all groups"
task.SetDisplayName(&displayName) 
executionSequence := int32(1)
task.SetExecutionSequence(&executionSequence) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
taskDefinitionId := "b3a31406-2a15-4c9a-b25b-a658fa5f07fc"
task.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)
task1 := graphmodels.NewTask()
continueOnError := false
task1.SetContinueOnError(&continueOnError) 
description := "Remove user from all Teams memberships"
task1.SetDescription(&description) 
displayName := "Remove user from all Teams"
task1.SetDisplayName(&displayName) 
executionSequence := int32(2)
task1.SetExecutionSequence(&executionSequence) 
isEnabled := true
task1.SetIsEnabled(&isEnabled) 
taskDefinitionId := "81f7b200-2816-4b3b-8c5d-dc556f07b024"
task1.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task1.SetArguments(arguments)
task2 := graphmodels.NewTask()
continueOnError := false
task2.SetContinueOnError(&continueOnError) 
description := "Delete user account in Azure AD"
task2.SetDescription(&description) 
displayName := "Delete User Account"
task2.SetDisplayName(&displayName) 
executionSequence := int32(3)
task2.SetExecutionSequence(&executionSequence) 
isEnabled := true
task2.SetIsEnabled(&isEnabled) 
taskDefinitionId := "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff"
task2.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task2.SetArguments(arguments)

tasks := []graphmodels.Taskable {
	task,
	task1,
	task2,

}
requestBody.SetTasks(tasks)

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Post(context.Background(), requestBody, nil)


```