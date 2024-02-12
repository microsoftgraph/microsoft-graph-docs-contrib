---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.identitygovernance.Workflow workflow = new com.microsoft.graph.models.identitygovernance.Workflow();
workflow.setCategory(com.microsoft.graph.models.identitygovernance.LifecycleWorkflowCategory.Joiner);
workflow.setDescription("Configure new hire tasks for onboarding employees on their first day");
workflow.setDisplayName("custom email marketing API test");
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(false);
com.microsoft.graph.models.identitygovernance.TriggerAndScopeBasedConditions executionConditions = new com.microsoft.graph.models.identitygovernance.TriggerAndScopeBasedConditions();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions");
com.microsoft.graph.models.identitygovernance.RuleBasedSubjectSet scope = new com.microsoft.graph.models.identitygovernance.RuleBasedSubjectSet();
scope.setOdataType("#microsoft.graph.identityGovernance.ruleBasedSubjectSet");
scope.setRule("(department eq 'Marketing')");
executionConditions.setScope(scope);
com.microsoft.graph.models.identitygovernance.TimeBasedAttributeTrigger trigger = new com.microsoft.graph.models.identitygovernance.TimeBasedAttributeTrigger();
trigger.setOdataType("#microsoft.graph.identityGovernance.timeBasedAttributeTrigger");
trigger.setTimeBasedAttribute(com.microsoft.graph.models.identitygovernance.WorkflowTriggerTimeBasedAttribute.EmployeeHireDate);
trigger.setOffsetInDays(0);
executionConditions.setTrigger(trigger);
workflow.setExecutionConditions(executionConditions);
LinkedList<com.microsoft.graph.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.models.identitygovernance.Task>();
com.microsoft.graph.models.identitygovernance.Task task = new com.microsoft.graph.models.identitygovernance.Task();
task.setContinueOnError(false);
task.setDescription("Enable user account in the directory");
task.setDisplayName("Enable User Account");
task.setIsEnabled(true);
task.setTaskDefinitionId("6fc52c9d-398b-4305-9763-15f42c1676fc");
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
task.setArguments(arguments);
tasks.add(task);
com.microsoft.graph.models.identitygovernance.Task task1 = new com.microsoft.graph.models.identitygovernance.Task();
task1.setContinueOnError(false);
task1.setDescription("Send welcome email to new hire");
task1.setDisplayName("Send Welcome Email");
task1.setIsEnabled(true);
task1.setTaskDefinitionId("70b29d51-b59a-4773-9280-8841dfd3f2ea");
LinkedList<KeyValuePair> arguments1 = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("cc");
keyValuePair.setValue("1baa57fa-3c4e-4526-ba5a-db47a9df95f0");
arguments1.add(keyValuePair);
KeyValuePair keyValuePair1 = new KeyValuePair();
keyValuePair1.setName("customSubject");
keyValuePair1.setValue("Welcome to the organization {{userDisplayName}}!");
arguments1.add(keyValuePair1);
KeyValuePair keyValuePair2 = new KeyValuePair();
keyValuePair2.setName("customBody");
keyValuePair2.setValue("Welcome to our organization {{userGivenName}}!");
arguments1.add(keyValuePair2);
KeyValuePair keyValuePair3 = new KeyValuePair();
keyValuePair3.setName("locale");
keyValuePair3.setValue("en-us");
arguments1.add(keyValuePair3);
task1.setArguments(arguments1);
tasks.add(task1);
workflow.setTasks(tasks);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().post(workflow);


```