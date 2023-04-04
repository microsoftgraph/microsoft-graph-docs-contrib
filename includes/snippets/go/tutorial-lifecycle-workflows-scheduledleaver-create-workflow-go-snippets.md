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
displayName := "Post-Offboarding of an employee"
requestBody.SetDisplayName(&displayName) 
description := "Configure offboarding tasks for employees after their last day of work"
requestBody.SetDescription(&description) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodels.NewWorkflowExecutionConditions()
additionalData := map[string]interface{}{
scope := graphmodels.New()
rule := "department eq 'Marketing'"
scope.SetRule(&rule) 
	executionConditions.SetScope(scope)
trigger := graphmodels.New()
timeBasedAttribute := "employeeLeaveDateTime"
trigger.SetTimeBasedAttribute(&timeBasedAttribute) 
offsetInDays := int32(7)
trigger.SetOffsetInDays(&offsetInDays) 
	executionConditions.SetTrigger(trigger)
}
executionConditions.SetAdditionalData(additionalData)
requestBody.SetExecutionConditions(executionConditions)


task := graphmodels.NewTask()
category := graphmodels.LEAVER_LIFECYCLETASKCATEGORY 
task.SetCategory(&category) 
continueOnError := false
task.SetContinueOnError(&continueOnError) 
description := "Remove all licenses assigned to the user"
task.SetDescription(&description) 
displayName := "Remove all licenses for user"
task.SetDisplayName(&displayName) 
executionSequence := int32(1)
task.SetExecutionSequence(&executionSequence) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
taskDefinitionId := "8fa97d28-3e52-4985-b3a9-a1126f9b8b4e"
task.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)
task1 := graphmodels.NewTask()
category := graphmodels.LEAVER_LIFECYCLETASKCATEGORY 
task1.SetCategory(&category) 
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
category := graphmodels.LEAVER_LIFECYCLETASKCATEGORY 
task2.SetCategory(&category) 
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