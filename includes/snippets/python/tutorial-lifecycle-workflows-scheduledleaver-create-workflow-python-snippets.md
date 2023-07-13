---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Workflow()
request_body.category(LifecycleWorkflowCategory.Leaver('lifecycleworkflowcategory.leaver'))

request_body.display_name = 'Post-Offboarding of an employee'

request_body.description = 'Configure offboarding tasks for employees after their last day of work'

request_body.is_enabled = True

request_body.is_scheduling_enabled = False

execution_conditions = TriggerAndScopeBasedConditions()
execution_conditions.@odata_type = '#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions'

execution_conditionsscope = RuleBasedSubjectSet()
execution_conditionsscope.@odata_type = '#microsoft.graph.identityGovernance.ruleBasedSubjectSet'

execution_conditionsscope.rule = 'department eq \'Marketing\''


execution_conditions.scope = execution_conditionsscope
execution_conditionstrigger = TimeBasedAttributeTrigger()
execution_conditionstrigger.@odata_type = '#microsoft.graph.identityGovernance.timeBasedAttributeTrigger'

execution_conditionstrigger.timebasedattribute(WorkflowTriggerTimeBasedAttribute.EmployeeLeaveDateTime('workflowtriggertimebasedattribute.employeeleavedatetime'))

execution_conditionstrigger.OffsetInDays = 7


execution_conditions.trigger = execution_conditionstrigger

request_body.execution_conditions = execution_conditions
tasks_task1 = Task()
tasks_task1.category(LifecycleTaskCategory.Leaver('lifecycletaskcategory.leaver'))

tasks_task1.continue_on_error = False

tasks_task1.description = 'Remove all licenses assigned to the user'

tasks_task1.display_name = 'Remove all licenses for user'

tasks_task1.ExecutionSequence = 1

tasks_task1.is_enabled = True

tasks_task1.task_definition_id = '8fa97d28-3e52-4985-b3a9-a1126f9b8b4e'

tasks_task1.Arguments([])


tasksArray []= tasksTask1;
tasks_task2 = Task()
tasks_task2.category(LifecycleTaskCategory.Leaver('lifecycletaskcategory.leaver'))

tasks_task2.continue_on_error = False

tasks_task2.description = 'Remove user from all Teams memberships'

tasks_task2.display_name = 'Remove user from all Teams'

tasks_task2.ExecutionSequence = 2

tasks_task2.is_enabled = True

tasks_task2.task_definition_id = '81f7b200-2816-4b3b-8c5d-dc556f07b024'

tasks_task2.Arguments([])


tasksArray []= tasksTask2;
tasks_task3 = Task()
tasks_task3.category(LifecycleTaskCategory.Leaver('lifecycletaskcategory.leaver'))

tasks_task3.continue_on_error = False

tasks_task3.description = 'Delete user account in Azure AD'

tasks_task3.display_name = 'Delete User Account'

tasks_task3.ExecutionSequence = 3

tasks_task3.is_enabled = True

tasks_task3.task_definition_id = '8d18588d-9ad3-4c0f-99d0-ec215f0e3dff'

tasks_task3.Arguments([])


tasksArray []= tasksTask3;
request_body.tasks(tasksArray)





result = await client.identity_governance.lifecycle_workflows.workflows.post(request_body = request_body)


```