---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.identitygovernance.Workflow workflow = new com.microsoft.graph.beta.models.identitygovernance.Workflow();
workflow.setCategory(com.microsoft.graph.beta.models.identitygovernance.LifecycleWorkflowCategory.Leaver);
workflow.setDescription("Configure offboarding tasks for employees on their last day of work");
workflow.setDisplayName("Offboard an employee");
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(true);
com.microsoft.graph.beta.models.identitygovernance.TriggerAndScopeBasedConditions executionConditions = new com.microsoft.graph.beta.models.identitygovernance.TriggerAndScopeBasedConditions();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions");
com.microsoft.graph.beta.models.identitygovernance.GroupBasedSubjectSet scope = new com.microsoft.graph.beta.models.identitygovernance.GroupBasedSubjectSet();
scope.setOdataType("#microsoft.graph.identityGovernance.groupBasedSubjectSet");
LinkedList<Group> groups = new LinkedList<Group>();
Group group = new Group();
group.setId("668e7540-7f8e-4ca4-a207-b7dffbb6d038");
groups.add(group);
scope.setGroups(groups);
executionConditions.setScope(scope);
com.microsoft.graph.beta.models.identitygovernance.MembershipChangeTrigger trigger = new com.microsoft.graph.beta.models.identitygovernance.MembershipChangeTrigger();
trigger.setOdataType("#microsoft.graph.identityGovernance.membershipChangeTrigger");
trigger.setChangeType(com.microsoft.graph.beta.models.identitygovernance.MembershipChangeType.Remove);
executionConditions.setTrigger(trigger);
workflow.setExecutionConditions(executionConditions);
LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task>();
com.microsoft.graph.beta.models.identitygovernance.Task task = new com.microsoft.graph.beta.models.identitygovernance.Task();
task.setCategory(EnumSet.of(com.microsoft.graph.beta.models.identitygovernance.LifecycleTaskCategory.Leaver));
task.setContinueOnError(false);
task.setDescription("Remove user from all Teams memberships");
task.setDisplayName("Remove user from all Teams");
task.setIsEnabled(true);
task.setTaskDefinitionId("81f7b200-2816-4b3b-8c5d-dc556f07b024");
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
task.setArguments(arguments);
tasks.add(task);
com.microsoft.graph.beta.models.identitygovernance.Task task1 = new com.microsoft.graph.beta.models.identitygovernance.Task();
task1.setCategory(EnumSet.of(com.microsoft.graph.beta.models.identitygovernance.LifecycleTaskCategory.Leaver));
task1.setContinueOnError(false);
task1.setDescription("Remove user from all Azure AD groups memberships");
task1.setDisplayName("Remove user from all groups");
task1.setIsEnabled(true);
task1.setTaskDefinitionId("b3a31406-2a15-4c9a-b25b-a658fa5f07fc");
LinkedList<KeyValuePair> arguments1 = new LinkedList<KeyValuePair>();
task1.setArguments(arguments1);
tasks.add(task1);
workflow.setTasks(tasks);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().post(workflow);


```