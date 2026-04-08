---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.identitygovernance.Workflow workflow = new com.microsoft.graph.beta.models.identitygovernance.Workflow();
workflow.setCategory(com.microsoft.graph.beta.models.identitygovernance.LifecycleWorkflowCategory.Mover);
workflow.setDisplayName("On Demand workflow move");
workflow.setDescription("Execute real-time tasks for employee job changes");
LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.beta.models.identitygovernance.Task>();
com.microsoft.graph.beta.models.identitygovernance.Task task = new com.microsoft.graph.beta.models.identitygovernance.Task();
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
task.setArguments(arguments);
task.setDescription("Send email to notify user’s manager of user move");
task.setDisplayName("Send email to notify manager of user move");
task.setIsEnabled(true);
task.setContinueOnError(false);
task.setTaskDefinitionId("aab41899-9972-422a-9d97-f626014578b7");
task.setCategory(EnumSet.of(com.microsoft.graph.beta.models.identitygovernance.LifecycleTaskCategory.Mover));
tasks.add(task);
workflow.setTasks(tasks);
com.microsoft.graph.beta.models.identitygovernance.OnDemandExecutionOnly executionConditions = new com.microsoft.graph.beta.models.identitygovernance.OnDemandExecutionOnly();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.onDemandExecutionOnly");
workflow.setExecutionConditions(executionConditions);
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(false);
LinkedList<DirectoryObject> administrationScopeTargets = new LinkedList<DirectoryObject>();
AdministrativeUnit directoryObject = new AdministrativeUnit();
directoryObject.setOdataType("#microsoft.graph.administrativeUnit");
directoryObject.setId("4f9dc456-0574-4122-9e55-8b4cc494b27d");
administrationScopeTargets.add(directoryObject);
AdministrativeUnit directoryObject1 = new AdministrativeUnit();
directoryObject1.setOdataType("#microsoft.graph.administrativeUnit");
directoryObject1.setId("2c987843-e9b1-4b1a-b924-ff1d2a9b054d");
administrationScopeTargets.add(directoryObject1);
workflow.setAdministrationScopeTargets(administrationScopeTargets);
com.microsoft.graph.models.identitygovernance.Workflow result = graphClient.identityGovernance().lifecycleWorkflows().workflows().post(workflow);


```