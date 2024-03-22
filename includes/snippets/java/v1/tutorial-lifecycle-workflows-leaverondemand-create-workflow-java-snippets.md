---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.identitygovernance.Workflow workflow = new com.microsoft.graph.models.identitygovernance.Workflow();
workflow.setCategory(com.microsoft.graph.models.identitygovernance.LifecycleWorkflowCategory.Leaver);
workflow.setDisplayName("Real-time employee termination");
workflow.setDescription("Execute real-time termination tasks for employees on their last day of work");
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(false);
com.microsoft.graph.models.identitygovernance.OnDemandExecutionOnly executionConditions = new com.microsoft.graph.models.identitygovernance.OnDemandExecutionOnly();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.onDemandExecutionOnly");
workflow.setExecutionConditions(executionConditions);
LinkedList<com.microsoft.graph.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.models.identitygovernance.Task>();
com.microsoft.graph.models.identitygovernance.Task task = new com.microsoft.graph.models.identitygovernance.Task();
task.setContinueOnError(false);
task.setDescription("Remove user from all Azure AD groups memberships");
task.setDisplayName("Remove user from all groups");
task.setExecutionSequence(1);
task.setIsEnabled(true);
task.setTaskDefinitionId("b3a31406-2a15-4c9a-b25b-a658fa5f07fc");
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
task.setArguments(arguments);
tasks.add(task);
com.microsoft.graph.models.identitygovernance.Task task1 = new com.microsoft.graph.models.identitygovernance.Task();
task1.setContinueOnError(false);
task1.setDescription("Remove user from all Teams memberships");
task1.setDisplayName("Remove user from all Teams");
task1.setExecutionSequence(2);
task1.setIsEnabled(true);
task1.setTaskDefinitionId("81f7b200-2816-4b3b-8c5d-dc556f07b024");
LinkedList<KeyValuePair> arguments1 = new LinkedList<KeyValuePair>();
task1.setArguments(arguments1);
tasks.add(task1);
com.microsoft.graph.models.identitygovernance.Task task2 = new com.microsoft.graph.models.identitygovernance.Task();
task2.setContinueOnError(false);
task2.setDescription("Delete user account in Azure AD");
task2.setDisplayName("Delete User Account");
task2.setExecutionSequence(3);
task2.setIsEnabled(true);
task2.setTaskDefinitionId("8d18588d-9ad3-4c0f-99d0-ec215f0e3dff");
LinkedList<KeyValuePair> arguments2 = new LinkedList<KeyValuePair>();
task2.setArguments(arguments2);
tasks.add(task2);
workflow.setTasks(tasks);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().post(workflow);


```