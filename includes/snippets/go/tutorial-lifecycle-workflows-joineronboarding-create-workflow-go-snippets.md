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
displayName := "Onboard pre-hire employee"
requestBody.SetDisplayName(&displayName) 
description := "Configure pre-hire tasks for onboarding employees before their first day"
requestBody.SetDescription(&description) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodels.NewWorkflowExecutionConditions()
additionalData := map[string]interface{}{
scope := graphmodels.New()
rule := "(department eq 'Sales')"
scope.SetRule(&rule) 
	executionConditions.SetScope(scope)
trigger := graphmodels.New()
timeBasedAttribute := "employeeHireDate"
trigger.SetTimeBasedAttribute(&timeBasedAttribute) 
offsetInDays := int32(-2)
trigger.SetOffsetInDays(&offsetInDays) 
	executionConditions.SetTrigger(trigger)
}
executionConditions.SetAdditionalData(additionalData)
requestBody.SetExecutionConditions(executionConditions)


task := graphmodels.NewTask()
isEnabled := true
task.SetIsEnabled(&isEnabled) 
category := graphmodels.JOINER_LIFECYCLETASKCATEGORY 
task.SetCategory(&category) 
taskDefinitionId := "1b555e50-7f65-41d5-b514-5894a026d10d"
task.SetTaskDefinitionId(&taskDefinitionId) 
displayName := "Generate TAP And Send Email"
task.SetDisplayName(&displayName) 
description := "Generate Temporary Access Pass and send via email to user's manager"
task.SetDescription(&description) 


keyValuePair := graphmodels.NewKeyValuePair()
name := "tapLifetimeMinutes"
keyValuePair.SetName(&name) 
value := "480"
keyValuePair.SetValue(&value) 
keyValuePair1 := graphmodels.NewKeyValuePair()
name := "tapIsUsableOnce"
keyValuePair1.SetName(&name) 
value := "true"
keyValuePair1.SetValue(&value) 

arguments := []graphmodels.KeyValuePairable {
	keyValuePair,
	keyValuePair1,

}
task.SetArguments(arguments)

tasks := []graphmodels.Taskable {
	task,

}
requestBody.SetTasks(tasks)

result, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Post(context.Background(), requestBody, nil)


```