---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = new Workflow();
workflow.displayName = "Onboard pre-hire employee";
workflow.description = "Configure pre-hire tasks for onboarding employees before their first day";
workflow.isEnabled = true;
workflow.isSchedulingEnabled = false;
TriggerAndScopeBasedConditions executionConditions = new TriggerAndScopeBasedConditions();
RuleBasedSubjectSet scope = new RuleBasedSubjectSet();
scope.rule = "(department eq 'Sales')";
executionConditions.scope = scope;
TimeBasedAttributeTrigger trigger = new TimeBasedAttributeTrigger();
trigger.timeBasedAttribute = WorkflowTriggerTimeBasedAttribute.EMPLOYEE_HIRE_DATE;
trigger.offsetInDays = -2;
executionConditions.trigger = trigger;
workflow.executionConditions = executionConditions;
LinkedList<Task> tasksList = new LinkedList<Task>();
Task tasks = new Task();
tasks.isEnabled = true;
tasks.category = EnumSet.of(LifecycleTaskCategory.JOINER);
tasks.taskDefinitionId = "1b555e50-7f65-41d5-b514-5894a026d10d";
tasks.displayName = "Generate TAP And Send Email";
tasks.description = "Generate Temporary Access Pass and send via email to user's manager";
LinkedList<KeyValuePair> argumentsList = new LinkedList<KeyValuePair>();
KeyValuePair arguments = new KeyValuePair();
arguments.name = "tapLifetimeMinutes";
arguments.value = "480";
argumentsList.add(arguments);
KeyValuePair arguments1 = new KeyValuePair();
arguments1.name = "tapIsUsableOnce";
arguments1.value = "true";
argumentsList.add(arguments1);
tasks.arguments = argumentsList;
tasksList.add(tasks);
TaskCollectionResponse taskCollectionResponse = new TaskCollectionResponse();
taskCollectionResponse.value = tasksList;
TaskCollectionPage taskCollectionPage = new TaskCollectionPage(taskCollectionResponse, null);
workflow.tasks = taskCollectionPage;

graphClient.identityGovernance().lifecycleWorkflows().workflows()
	.buildRequest()
	.post(workflow);

```