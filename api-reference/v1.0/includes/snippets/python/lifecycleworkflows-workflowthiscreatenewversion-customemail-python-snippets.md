---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateNewVersionPostRequestBody()
additional_data = [
'category' => 'joiner', 
'description' => 'Configure new hire tasks for onboarding employees on their first day', 
'display_name' => 'custom email marketing API test', 
'is_enabled' => true,
'is_scheduling_enabled' => false,
'execution_conditions' => request_body = ExecutionConditions()
		request_body.@odata_type = '#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions'

scope = Scope()
		scope.@odata_type = '#microsoft.graph.identityGovernance.ruleBasedSubjectSet'

		scope.rule = '(department eq \'Marketing\')'


request_body.scope = scope
trigger = Trigger()
		trigger.@odata_type = '#microsoft.graph.identityGovernance.timeBasedAttributeTrigger'

		trigger.time_based_attribute = 'employeeHireDate'

		trigger.OffsetInDays = 0


request_body.trigger = trigger

request_body.execution_conditions = executionConditions

'tasks' => tasks1 = ()
		tasks1.continue_on_error = False

		tasks1.description = 'Enable user account in the directory'

		tasks1.display_name = 'Enable User Account'

		tasks1.is_enabled = True

		tasks1.task_definition_id = '6fc52c9d-398b-4305-9763-15f42c1676fc'

tasks1.Arguments([])


tasksArray []= tasks1;
tasks2 = ()
	tasks2.continue_on_error = False

	tasks2.description = 'Send welcome email to new hire'

	tasks2.display_name = 'Send Welcome Email'

	tasks2.is_enabled = True

	tasks2.task_definition_id = '70b29d51-b59a-4773-9280-8841dfd3f2ea'

arguments1 = ()
	arguments1.name = 'cc'

	arguments1.value = '1baa57fa-3c4e-4526-ba5a-db47a9df95f0'


argumentsArray []= arguments1;
arguments2 = ()
	arguments2.name = 'customSubject'

	arguments2.value = 'Welcome to the organization {{userDisplayName}}!'


argumentsArray []= arguments2;
arguments3 = ()
	arguments3.name = 'customBody'

	arguments3.value = 'Welcome to our organization {{userGivenName}}!'


argumentsArray []= arguments3;
arguments4 = ()
	arguments4.name = 'locale'

	arguments4.value = 'en-us'


argumentsArray []= arguments4;
tasks2.arguments(argumentsArray)



tasksArray []= tasks2;
request_body.tasks(tasksArray)


];
request_body.additional_data(additional_data)





result = await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_create_new_version.post(request_body = request_body)


```