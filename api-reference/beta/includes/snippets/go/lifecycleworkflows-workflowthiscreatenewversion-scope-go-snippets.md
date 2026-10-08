---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphidentitygovernance.NewCreateNewVersionPostRequestBody()
workflow := graphmodelsidentitygovernance.NewWorkflow()
category := graphmodels.MOVER_LIFECYCLEWORKFLOWCATEGORY 
workflow.SetCategory(&category) 
displayName := "On Demand mover workflow"
workflow.SetDisplayName(&displayName) 
description := "Execute real-time tasks for employee job changes"
workflow.SetDescription(&description) 


task := graphmodelsidentitygovernance.NewTask()
category := graphmodels.MOVER_LIFECYCLETASKCATEGORY 
task.SetCategory(&category) 
continueOnError := false
task.SetContinueOnError(&continueOnError) 
description := "Send email to notify user’s manager of user move"
task.SetDescription(&description) 
displayName := "Send email to notify manager of user move"
task.SetDisplayName(&displayName) 
executionSequence := int32(1)
task.SetExecutionSequence(&executionSequence) 
id := "f09eb640-6c16-4f1a-8b48-6a295a307705"
task.SetId(&id) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
taskDefinitionId := "aab41899-9972-422a-9d97-f626014578b7"
task.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)
task1 := graphmodelsidentitygovernance.NewTask()


keyValuePair := graphmodels.NewKeyValuePair()
name := "groupID"
keyValuePair.SetName(&name) 
value := "8d1d1deb-2ef0-4f72-a460-729a1cc74e7e"
keyValuePair.SetValue(&value) 

arguments := []graphmodels.KeyValuePairable {
	keyValuePair,
}
task1.SetArguments(arguments)
description := "Add user to selected groups"
task1.SetDescription(&description) 
displayName := "Add user to groups"
task1.SetDisplayName(&displayName) 
isEnabled := true
task1.SetIsEnabled(&isEnabled) 
continueOnError := false
task1.SetContinueOnError(&continueOnError) 
taskDefinitionId := "22085229-5809-45e8-97fd-270d28d66910"
task1.SetTaskDefinitionId(&taskDefinitionId) 
category := graphmodels.JOINER,LEAVER,MOVER_LIFECYCLETASKCATEGORY 
task1.SetCategory(&category) 

tasks := []graphmodelsidentitygovernance.Taskable {
	task,
	task1,
}
workflow.SetTasks(tasks)
executionConditions := graphmodelsidentitygovernance.NewOnDemandExecutionOnly()
workflow.SetExecutionConditions(executionConditions)
isEnabled := true
workflow.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
workflow.SetIsSchedulingEnabled(&isSchedulingEnabled) 


directoryObject := graphmodels.NewAdministrativeUnit()
id := "2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7"
directoryObject.SetId(&id) 

administrationScopeTargets := []graphmodels.DirectoryObjectable {
	directoryObject,
}
workflow.SetAdministrationScopeTargets(administrationScopeTargets)
requestBody.SetWorkflow(workflow)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphIdentityGovernanceCreateNewVersion, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceCreateNewVersion().Post(context.Background(), requestBody, nil)


```