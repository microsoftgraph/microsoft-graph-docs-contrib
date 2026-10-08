---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodelsidentitygovernance.NewWorkflow()
category := graphmodels.MOVER_LIFECYCLEWORKFLOWCATEGORY 
requestBody.SetCategory(&category) 
displayName := "On Demand workflow move"
requestBody.SetDisplayName(&displayName) 
description := "Execute real-time tasks for employee job changes"
requestBody.SetDescription(&description) 


task := graphmodelsidentitygovernance.NewTask()
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)
description := "Send email to notify user’s manager of user move"
task.SetDescription(&description) 
displayName := "Send email to notify manager of user move"
task.SetDisplayName(&displayName) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
continueOnError := false
task.SetContinueOnError(&continueOnError) 
taskDefinitionId := "aab41899-9972-422a-9d97-f626014578b7"
task.SetTaskDefinitionId(&taskDefinitionId) 
category := graphmodels.MOVER_LIFECYCLETASKCATEGORY 
task.SetCategory(&category) 

tasks := []graphmodelsidentitygovernance.Taskable {
	task,
}
requestBody.SetTasks(tasks)
executionConditions := graphmodelsidentitygovernance.NewOnDemandExecutionOnly()
requestBody.SetExecutionConditions(executionConditions)
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 


directoryObject := graphmodels.NewAdministrativeUnit()
id := "4f9dc456-0574-4122-9e55-8b4cc494b27d"
directoryObject.SetId(&id) 
directoryObject1 := graphmodels.NewAdministrativeUnit()
id := "2c987843-e9b1-4b1a-b924-ff1d2a9b054d"
directoryObject1.SetId(&id) 

administrationScopeTargets := []graphmodels.DirectoryObjectable {
	directoryObject,
	directoryObject1,
}
requestBody.SetAdministrationScopeTargets(administrationScopeTargets)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Post(context.Background(), requestBody, nil)


```