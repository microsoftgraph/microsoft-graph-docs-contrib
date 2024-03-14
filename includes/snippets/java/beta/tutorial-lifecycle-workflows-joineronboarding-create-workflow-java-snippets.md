---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.identitygovernance.Workflow workflow = new com.microsoft.graph.beta.models.identitygovernance.Workflow();
workflow.setDisplayName("Onboard pre-hire employee");
workflow.setDescription("Configure pre-hire tasks for onboarding employees before their first day");
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(false);
com.microsoft.graph.beta.models.identitygovernance.TriggerAndScopeBasedConditions executionConditions = new com.microsoft.graph.beta.models.identitygovernance.TriggerAndScopeBasedConditions();
executionConditions.setOdataType("microsoft.graph.identityGovernance.triggerAndScopeBasedConditions");
com.microsoft.graph.beta.models.identitygovernance.RuleBasedSubjectSet scope = new com.microsoft.graph.beta.models.identitygovernance.RuleBasedSubjectSet();
scope.setOdataType("microsoft.graph.identityGovernance.ruleBasedSubjectSet");
scope.setRule("(department eq 'Sales')");
executionConditions.setScope(scope);
com.microsoft.graph.beta.models.identitygovernance.TimeBasedAttributeTrigger trigger = new com.microsoft.graph.beta.models.identitygovernance.TimeBasedAttributeTrigger();
trigger.setOdataType("microsoft.graph.identityGovernance.timeBasedAttributeTrigger");
trigger.setTimeBasedAttribute(com.microsoft.graph.beta.models.identitygovernance.WorkflowTriggerTimeBasedAttribute.EmployeeHireDate);
trigger.setOffsetInDays(-2);
executionConditions.setTrigger(trigger);
workflow.setExecutionConditions(executionConditions);
LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task>();
com.microsoft.graph.beta.models.identitygovernance.Task task = new com.microsoft.graph.beta.models.identitygovernance.Task();
task.setIsEnabled(true);
task.setCategory(EnumSet.of(com.microsoft.graph.beta.models.identitygovernance.LifecycleTaskCategory.Joiner));
task.setTaskDefinitionId("1b555e50-7f65-41d5-b514-5894a026d10d");
task.setDisplayName("Generate TAP And Send Email");
task.setDescription("Generate Temporary Access Pass and send via email to user's manager");
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("tapLifetimeMinutes");
keyValuePair.setValue("480");
arguments.add(keyValuePair);
KeyValuePair keyValuePair1 = new KeyValuePair();
keyValuePair1.setName("tapIsUsableOnce");
keyValuePair1.setValue("true");
arguments.add(keyValuePair1);
task.setArguments(arguments);
tasks.add(task);
workflow.setTasks(tasks);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().post(workflow);


```