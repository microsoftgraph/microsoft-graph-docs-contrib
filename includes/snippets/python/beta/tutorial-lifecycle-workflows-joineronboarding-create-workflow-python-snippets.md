---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Workflow()
request_body.display_name = 'Onboard pre-hire employee'

request_body.description = 'Configure pre-hire tasks for onboarding employees before their first day'

request_body.is_enabled = True

request_body.is_scheduling_enabled = False

execution_conditions = TriggerAndScopeBasedConditions()
execution_conditions.@odata_type = 'microsoft.graph.identityGovernance.triggerAndScopeBasedConditions'

execution_conditionsscope = RuleBasedSubjectSet()
execution_conditionsscope.@odata_type = 'microsoft.graph.identityGovernance.ruleBasedSubjectSet'

execution_conditionsscope.rule = '(department eq \'Sales\')'


execution_conditions.scope = execution_conditionsscope
execution_conditionstrigger = TimeBasedAttributeTrigger()
execution_conditionstrigger.@odata_type = 'microsoft.graph.identityGovernance.timeBasedAttributeTrigger'

execution_conditionstrigger.timebasedattribute(WorkflowTriggerTimeBasedAttribute.EmployeeHireDate('workflowtriggertimebasedattribute.employeehiredate'))

execution_conditionstrigger.OffsetInDays = -2


execution_conditions.trigger = execution_conditionstrigger

request_body.execution_conditions = execution_conditions
tasks_task1 = Task()
tasks_task1.is_enabled = True

tasks_task1.category(LifecycleTaskCategory.Joiner('lifecycletaskcategory.joiner'))

tasks_task1.task_definition_id = '1b555e50-7f65-41d5-b514-5894a026d10d'

tasks_task1.display_name = 'Generate TAP And Send Email'

tasks_task1.description = 'Generate Temporary Access Pass and send via email to user\'s manager'

arguments_key_value_pair1 = KeyValuePair()
arguments_key_value_pair1.name = 'tapLifetimeMinutes'

arguments_key_value_pair1.value = '480'


argumentsArray []= argumentsKeyValuePair1;
arguments_key_value_pair2 = KeyValuePair()
arguments_key_value_pair2.name = 'tapIsUsableOnce'

arguments_key_value_pair2.value = 'true'


argumentsArray []= argumentsKeyValuePair2;
tasks_task1.arguments(argumentsArray)



tasksArray []= tasksTask1;
request_body.tasks(tasksArray)





result = await client.identity_governance.lifecycle_workflows.workflows.post(request_body = request_body)


```