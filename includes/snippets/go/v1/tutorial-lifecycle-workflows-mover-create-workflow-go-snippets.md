---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/models/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodelsidentitygovernance.NewWorkflow()
category := graphmodels.MOVER_LIFECYCLEWORKFLOWCATEGORY 
requestBody.SetCategory(&category) 
description := "Configure mover tasks for a user moved to the Sales department."
requestBody.SetDescription(&description) 
displayName := "Added to Sales department workflow"
requestBody.SetDisplayName(&displayName) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := true
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodelsidentitygovernance.NewTriggerAndScopeBasedConditions()
scope := graphmodelsidentitygovernance.NewRuleBasedSubjectSet()
rule := "(department eq 'Sales')"
scope.SetRule(&rule) 
executionConditions.SetScope(scope)
trigger := graphmodelsidentitygovernance.NewAttributeChangeTrigger()


triggerAttribute := graphmodelsidentitygovernance.NewTriggerAttribute()
name := "department"
triggerAttribute.SetName(&name) 

triggerAttributes := []graphmodelsidentitygovernance.TriggerAttributeable {
	triggerAttribute,
}
trigger.SetTriggerAttributes(triggerAttributes)
executionConditions.SetTrigger(trigger)
requestBody.SetExecutionConditions(executionConditions)


task := graphmodelsidentitygovernance.NewTask()
continueOnError := false
task.SetContinueOnError(&continueOnError) 
description := "Send email to moving employee's manager"
task.SetDescription(&description) 
displayName := "Notify manager of move"
task.SetDisplayName(&displayName) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
taskDefinitionId := "aab41899-9972-422a-9d97-f626014578b7"
task.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)

tasks := []graphmodelsidentitygovernance.Taskable {
	task,
}
requestBody.SetTasks(tasks)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Post(context.Background(), requestBody, nil)


```