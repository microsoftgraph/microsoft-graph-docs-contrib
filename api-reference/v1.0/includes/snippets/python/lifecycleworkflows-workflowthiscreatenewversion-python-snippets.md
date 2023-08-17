---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateNewVersionPostRequestBody()
workflow = Workflow()
workflow.category(LifecycleWorkflowCategory.Joiner('lifecycleworkflowcategory.joiner'))

workflow.description = 'Configure new hire tasks for onboarding employees on their first day'

workflow.display_name = 'Global onboard new hire employee'

workflow.is_enabled = True

workflow.is_scheduling_enabled = False

workflowexecution_conditions = TriggerAndScopeBasedConditions()
workflowexecution_conditions.@odata_type = '#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions'

workflowexecution_conditionsscope = RuleBasedSubjectSet()
workflowexecution_conditionsscope.@odata_type = '#microsoft.graph.identityGovernance.ruleBasedSubjectSet'

workflowexecution_conditionsscope.rule = '(department eq \'Marketing\')'


workflowexecution_conditions.scope = workflowexecution_conditionsscope
workflowexecution_conditionstrigger = TimeBasedAttributeTrigger()
workflowexecution_conditionstrigger.@odata_type = '#microsoft.graph.identityGovernance.timeBasedAttributeTrigger'

workflowexecution_conditionstrigger.timebasedattribute(WorkflowTriggerTimeBasedAttribute.EmployeeHireDate('workflowtriggertimebasedattribute.employeehiredate'))

workflowexecution_conditionstrigger.OffsetInDays = 1


workflowexecution_conditions.trigger = workflowexecution_conditionstrigger

workflow.execution_conditions = workflowexecution_conditions
tasks_task1 = Task()
tasks_task1.continue_on_error = False

tasks_task1.description = 'Enable user account in the directory'

tasks_task1.display_name = 'Enable User Account'

tasks_task1.is_enabled = True

tasks_task1.task_definition_id = '6fc52c9d-398b-4305-9763-15f42c1676fc'

tasks_task1.Arguments([])


tasksArray []= tasksTask1;
tasks_task2 = Task()
tasks_task2.continue_on_error = False

tasks_task2.description = 'Send welcome email to new hire'

tasks_task2.display_name = 'Send Welcome Email'

tasks_task2.is_enabled = True

tasks_task2.task_definition_id = '70b29d51-b59a-4773-9280-8841dfd3f2ea'

tasks_task2.Arguments([])


tasksArray []= tasksTask2;
workflow.tasks(tasksArray)



request_body.workflow = workflow



result = await client.identity_governance.lifecycle_workflows.workflows.by_workflow_id('workflow-id').microsoft_graph_identity_governance_create_new_version.post(request_body = request_body)


```