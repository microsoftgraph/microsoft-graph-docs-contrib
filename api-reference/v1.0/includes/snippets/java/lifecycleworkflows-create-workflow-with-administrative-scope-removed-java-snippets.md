---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancecreatenewversion.CreateNewVersionPostRequestBody createNewVersionPostRequestBody = new com.microsoft.graph.identitygovernance.lifecycleworkflows.workflows.item.microsoftgraphidentitygovernancecreatenewversion.CreateNewVersionPostRequestBody();
com.microsoft.graph.models.identitygovernance.Workflow workflow = new com.microsoft.graph.models.identitygovernance.Workflow();
workflow.setCategory(com.microsoft.graph.models.identitygovernance.LifecycleWorkflowCategory.Mover);
workflow.setDisplayName("Remove existing target scope of a workflow");
workflow.setDescription("On-demand removal of the target scope of a workflow.");
LinkedList<com.microsoft.graph.models.identitygovernance.Task> tasks = new LinkedList<com.microsoft.graph.models.identitygovernance.Task>();
com.microsoft.graph.models.identitygovernance.Task task = new com.microsoft.graph.models.identitygovernance.Task();
task.setCategory(EnumSet.of(com.microsoft.graph.models.identitygovernance.LifecycleTaskCategory.Mover));
task.setContinueOnError(false);
task.setDescription("Send email to notify user's manager of user move");
task.setDisplayName("Send email to notify manager of user move");
task.setExecutionSequence(1);
task.setId("f09eb640-6c16-4f1a-8b48-6a295a307705");
task.setIsEnabled(true);
task.setTaskDefinitionId("aab41899-9972-422a-9d97-f626014578b7");
LinkedList<KeyValuePair> arguments = new LinkedList<KeyValuePair>();
task.setArguments(arguments);
tasks.add(task);
com.microsoft.graph.models.identitygovernance.Task task1 = new com.microsoft.graph.models.identitygovernance.Task();
LinkedList<KeyValuePair> arguments1 = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("groupID");
keyValuePair.setValue("5fa668df-a7b0-43fe-828d-48f7a1f7ca44");
arguments1.add(keyValuePair);
task1.setArguments(arguments1);
task1.setDescription("Add user to selected groups");
task1.setDisplayName("Add user to groups");
task1.setIsEnabled(true);
task1.setContinueOnError(false);
task1.setTaskDefinitionId("22085229-5809-45e8-97fd-270d28d66910");
task1.setCategory(EnumSet.of(com.microsoft.graph.models.identitygovernance.LifecycleTaskCategory.Joiner, com.microsoft.graph.models.identitygovernance.LifecycleTaskCategory.Leaver, com.microsoft.graph.models.identitygovernance.LifecycleTaskCategory.Mover));
tasks.add(task1);
workflow.setTasks(tasks);
com.microsoft.graph.models.identitygovernance.OnDemandExecutionOnly executionConditions = new com.microsoft.graph.models.identitygovernance.OnDemandExecutionOnly();
executionConditions.setOdataType("#microsoft.graph.identityGovernance.onDemandExecutionOnly");
workflow.setExecutionConditions(executionConditions);
workflow.setIsEnabled(true);
workflow.setIsSchedulingEnabled(false);
LinkedList<DirectoryObject> administrationScopeTargets = new LinkedList<DirectoryObject>();
workflow.setAdministrationScopeTargets(administrationScopeTargets);
createNewVersionPostRequestBody.setWorkflow(workflow);
var result = graphClient.identityGovernance().lifecycleWorkflows().workflows().byWorkflowId("{workflow-id}").microsoftGraphIdentityGovernanceCreateNewVersion().post(createNewVersionPostRequestBody);


```