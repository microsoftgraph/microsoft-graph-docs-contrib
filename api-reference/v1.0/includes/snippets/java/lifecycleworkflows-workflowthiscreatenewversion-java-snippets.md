---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = new Workflow();
workflow.category = LifecycleWorkflowCategory.JOINER;
workflow.description = "Configure new hire tasks for onboarding employees on their first day";
workflow.displayName = "Global onboard new hire employee";
workflow.isEnabled = true;
workflow.isSchedulingEnabled = false;
TriggerAndScopeBasedConditions executionConditions = new TriggerAndScopeBasedConditions();
RuleBasedSubjectSet scope = new RuleBasedSubjectSet();
scope.rule = "(department eq 'Marketing')";
executionConditions.scope = scope;
TimeBasedAttributeTrigger trigger = new TimeBasedAttributeTrigger();
trigger.timeBasedAttribute = WorkflowTriggerTimeBasedAttribute.EMPLOYEE_HIRE_DATE;
trigger.offsetInDays = 1;
executionConditions.trigger = trigger;
workflow.executionConditions = executionConditions;
LinkedList<Task> tasksList = new LinkedList<Task>();
Task tasks = new Task();
tasks.continueOnError = false;
tasks.description = "Enable user account in the directory";
tasks.displayName = "Enable User Account";
tasks.isEnabled = true;
tasks.taskDefinitionId = "6fc52c9d-398b-4305-9763-15f42c1676fc";
LinkedList<KeyValuePair> argumentsList = new LinkedList<KeyValuePair>();
tasks.arguments = argumentsList;
tasksList.add(tasks);
Task tasks1 = new Task();
tasks1.continueOnError = false;
tasks1.description = "Send welcome email to new hire";
tasks1.displayName = "Send Welcome Email";
tasks1.isEnabled = true;
tasks1.taskDefinitionId = "70b29d51-b59a-4773-9280-8841dfd3f2ea";
LinkedList<KeyValuePair> argumentsList1 = new LinkedList<KeyValuePair>();
tasks1.arguments = argumentsList1;
tasksList.add(tasks1);
TaskCollectionResponse taskCollectionResponse = new TaskCollectionResponse();
taskCollectionResponse.value = tasksList;
TaskCollectionPage taskCollectionPage = new TaskCollectionPage(taskCollectionResponse, null);
workflow.tasks = taskCollectionPage;

graphClient.identityGovernance().lifecycleWorkflows().workflows("{workflowId}")
	.createNewVersion(WorkflowCreateNewVersionParameterSet
		.newBuilder()
		.withWorkflow(workflow)
		.build())
	.buildRequest()
	.post();

```