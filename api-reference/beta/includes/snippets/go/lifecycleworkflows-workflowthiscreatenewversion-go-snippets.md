---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphidentitygovernance.NewCreateNewVersionPostRequestBody()
workflow := graphmodelsidentitygovernance.NewWorkflow()
category := graphmodels.JOINER_LIFECYCLEWORKFLOWCATEGORY 
workflow.SetCategory(&category) 
description := "Configure new hire tasks for onboarding employees on their first day"
workflow.SetDescription(&description) 
displayName := "Global onboard new hire employee"
workflow.SetDisplayName(&displayName) 
isEnabled := true
workflow.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
workflow.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodelsidentitygovernance.NewTriggerAndScopeBasedConditions()
scope := graphmodelsidentitygovernance.NewRuleBasedSubjectSet()
rule := "(department eq 'Marketing')"
scope.SetRule(&rule) 
executionConditions.SetScope(scope)
trigger := graphmodelsidentitygovernance.NewTimeBasedAttributeTrigger()
timeBasedAttribute := graphmodels.EMPLOYEEHIREDATE_WORKFLOWTRIGGERTIMEBASEDATTRIBUTE 
trigger.SetTimeBasedAttribute(&timeBasedAttribute) 
offsetInDays := int32(1)
trigger.SetOffsetInDays(&offsetInDays) 
executionConditions.SetTrigger(trigger)
workflow.SetExecutionConditions(executionConditions)


task := graphmodelsidentitygovernance.NewTask()
continueOnError := false
task.SetContinueOnError(&continueOnError) 
description := "Enable user account in the directory"
task.SetDescription(&description) 
displayName := "Enable User Account"
task.SetDisplayName(&displayName) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
taskDefinitionId := "6fc52c9d-398b-4305-9763-15f42c1676fc"
task.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)
task1 := graphmodelsidentitygovernance.NewTask()
continueOnError := false
task1.SetContinueOnError(&continueOnError) 
description := "Send welcome email to new hire"
task1.SetDescription(&description) 
displayName := "Send Welcome Email"
task1.SetDisplayName(&displayName) 
isEnabled := true
task1.SetIsEnabled(&isEnabled) 
taskDefinitionId := "70b29d51-b59a-4773-9280-8841dfd3f2ea"
task1.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task1.SetArguments(arguments)

tasks := []graphmodelsidentitygovernance.Taskable {
	task,
	task1,
}
workflow.SetTasks(tasks)
requestBody.SetWorkflow(workflow)

microsoft.graph.identityGovernance.createNewVersion, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().ByWorkflowId("workflow-id").MicrosoftGraphIdentityGovernanceCreateNewVersion().Post(context.Background(), requestBody, nil)


```