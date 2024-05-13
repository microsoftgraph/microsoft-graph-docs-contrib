---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/models/identitygovernance"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsidentitygovernance.NewWorkflow()
category := graphmodels.LEAVER_LIFECYCLEWORKFLOWCATEGORY 
requestBody.SetCategory(&category) 
description := "Configure offboarding tasks for employees on their last day of work"
requestBody.SetDescription(&description) 
displayName := "Offboard an employee"
requestBody.SetDisplayName(&displayName) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := true
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodelsidentitygovernance.NewTriggerAndScopeBasedConditions()
scope := graphmodelsidentitygovernance.NewGroupBasedSubjectSet()


group := graphmodels.NewGroup()
id := "668e7540-7f8e-4ca4-a207-b7dffbb6d038"
group.SetId(&id) 

groups := []graphmodels.Groupable {
	group,
}
scope.SetGroups(groups)
executionConditions.SetScope(scope)
trigger := graphmodelsidentitygovernance.NewMembershipChangeTrigger()
changeType := graphmodels.REMOVE_MEMBERSHIPCHANGETYPE 
trigger.SetChangeType(&changeType) 
executionConditions.SetTrigger(trigger)
requestBody.SetExecutionConditions(executionConditions)


task := graphmodelsidentitygovernance.NewTask()
category := graphmodels.LEAVER_LIFECYCLETASKCATEGORY 
task.SetCategory(&category) 
continueOnError := false
task.SetContinueOnError(&continueOnError) 
description := "Remove user from all Teams memberships"
task.SetDescription(&description) 
displayName := "Remove user from all Teams"
task.SetDisplayName(&displayName) 
isEnabled := true
task.SetIsEnabled(&isEnabled) 
taskDefinitionId := "81f7b200-2816-4b3b-8c5d-dc556f07b024"
task.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task.SetArguments(arguments)
task1 := graphmodelsidentitygovernance.NewTask()
category := graphmodels.LEAVER_LIFECYCLETASKCATEGORY 
task1.SetCategory(&category) 
continueOnError := false
task1.SetContinueOnError(&continueOnError) 
description := "Remove user from all Azure AD groups memberships"
task1.SetDescription(&description) 
displayName := "Remove user from all groups"
task1.SetDisplayName(&displayName) 
isEnabled := true
task1.SetIsEnabled(&isEnabled) 
taskDefinitionId := "b3a31406-2a15-4c9a-b25b-a658fa5f07fc"
task1.SetTaskDefinitionId(&taskDefinitionId) 
arguments := []graphmodels.KeyValuePairable {

}
task1.SetArguments(arguments)

tasks := []graphmodelsidentitygovernance.Taskable {
	task,
	task1,
}
requestBody.SetTasks(tasks)

workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Post(context.Background(), requestBody, nil)


```