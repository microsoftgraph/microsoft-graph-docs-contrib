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
category := graphmodels.JOINER_LIFECYCLEWORKFLOWCATEGORY 
requestBody.SetCategory(&category) 
description := "Configure new hire tasks for onboarding employees on their first day"
requestBody.SetDescription(&description) 
displayName := "custom email marketing API test"
requestBody.SetDisplayName(&displayName) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isSchedulingEnabled := false
requestBody.SetIsSchedulingEnabled(&isSchedulingEnabled) 
executionConditions := graphmodelsidentitygovernance.NewTriggerAndScopeBasedConditions()
scope := graphmodelsidentitygovernance.NewRuleBasedSubjectSet()
rule := "(department eq 'Marketing')"
scope.SetRule(&rule) 
executionConditions.SetScope(scope)
trigger := graphmodelsidentitygovernance.NewTimeBasedAttributeTrigger()
timeBasedAttribute := graphmodels.EMPLOYEEHIREDATE_WORKFLOWTRIGGERTIMEBASEDATTRIBUTE 
trigger.SetTimeBasedAttribute(&timeBasedAttribute) 
offsetInDays := int32(0)
trigger.SetOffsetInDays(&offsetInDays) 
executionConditions.SetTrigger(trigger)
requestBody.SetExecutionConditions(executionConditions)


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


keyValuePair := graphmodels.NewKeyValuePair()
name := "cc"
keyValuePair.SetName(&name) 
value := "1baa57fa-3c4e-4526-ba5a-db47a9df95f0"
keyValuePair.SetValue(&value) 
keyValuePair1 := graphmodels.NewKeyValuePair()
name := "customSubject"
keyValuePair1.SetName(&name) 
value := "Welcome to the organization {{userDisplayName}}!"
keyValuePair1.SetValue(&value) 
keyValuePair2 := graphmodels.NewKeyValuePair()
name := "customBody"
keyValuePair2.SetName(&name) 
value := "Welcome to our organization {{userGivenName}}!"
keyValuePair2.SetValue(&value) 
keyValuePair3 := graphmodels.NewKeyValuePair()
name := "locale"
keyValuePair3.SetName(&name) 
value := "en-us"
keyValuePair3.SetValue(&value) 

arguments := []graphmodels.KeyValuePairable {
	keyValuePair,
	keyValuePair1,
	keyValuePair2,
	keyValuePair3,
}
task1.SetArguments(arguments)

tasks := []graphmodelsidentitygovernance.Taskable {
	task,
	task1,
}
requestBody.SetTasks(tasks)

workflows, err := graphClient.IdentityGovernance().LifecycleWorkflows().Workflows().Post(context.Background(), requestBody, nil)


```