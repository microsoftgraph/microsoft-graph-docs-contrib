---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.identitygovernance.Workflow workflow = new com.microsoft.graph.beta.models.identitygovernance.Workflow();
workflow.setCategory(com.microsoft.graph.beta.models.identitygovernance.LifecycleWorkflowCategory.Mover);
workflow.setDescription("Configure mover tasks for a user when their job profile changes");
workflow.setDisplayName("Sales contractor moves to full-time employee");
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(true);
com.microsoft.graph.beta.models.identitygovernance.TriggerAndScopeBasedConditions executionConditions = new com.microsoft.graph.beta.models.identitygovernance.TriggerAndScopeBasedConditions();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions");
com.microsoft.graph.beta.models.identitygovernance.RuleBasedSubjectSet scope = new com.microsoft.graph.beta.models.identitygovernance.RuleBasedSubjectSet();
scope.setOdataType("#microsoft.graph.identityGovernance.ruleBasedSubjectSet");
scope.setRule("(department eq 'Sales')");
executionConditions.setScope(scope);
com.microsoft.graph.beta.models.identitygovernance.AttributeChangeTrigger trigger = new com.microsoft.graph.beta.models.identitygovernance.AttributeChangeTrigger();
trigger.setOdataType("#microsoft.graph.identityGovernance.attributeChangeTrigger");
LinkedList<com.microsoft.graph.beta.models.identitygovernance.TriggerAttribute> triggerAttributes = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.TriggerAttribute>();
com.microsoft.graph.beta.models.identitygovernance.TriggerAttribute triggerAttribute = new com.microsoft.graph.beta.models.identitygovernance.TriggerAttribute();
triggerAttribute.setName("department");
triggerAttributes.add(triggerAttribute);
trigger.setTriggerAttributes(triggerAttributes);
executionConditions.setTrigger(trigger);
workflow.setExecutionConditions(executionConditions);
LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task>();
com.microsoft.graph.beta.models.identitygovernance.Task task = new com.microsoft.graph.beta.models.identitygovernance.Task();
task.setContinueOnError(false);
task.setDescription("Send email to moving employee's manager");
task.setDisplayName("Notify manager of move");
task.setIsEnabled(true);
task.setTaskDefinitionId("aab41899-9972-422a-9d97-f626014578b7");
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
task.setArguments(arguments);
tasks.add(task);
workflow.setTasks(tasks);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().post(workflow);


```