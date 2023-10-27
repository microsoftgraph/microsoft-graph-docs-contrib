---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Workflow workflow = new Workflow();
workflow.category = LifecycleWorkflowCategory.LEAVER;
workflow.displayName = "Real-time employee termination";
workflow.description = "Execute real-time termination tasks for employees on their last day of work";
workflow.isEnabled = true;
workflow.isSchedulingEnabled = false;
OnDemandExecutionOnly executionConditions = new OnDemandExecutionOnly();
workflow.executionConditions = executionConditions;
LinkedList<Task> tasksList = new LinkedList<Task>();
Task tasks = new Task();
tasks.continueOnError = false;
tasks.description = "Remove user from all Azure AD groups memberships";
tasks.displayName = "Remove user from all groups";
tasks.executionSequence = 1;
tasks.isEnabled = true;
tasks.taskDefinitionId = "b3a31406-2a15-4c9a-b25b-a658fa5f07fc";
LinkedList<KeyValuePair> argumentsList = new LinkedList<KeyValuePair>();
tasks.arguments = argumentsList;
tasksList.add(tasks);
Task tasks1 = new Task();
tasks1.continueOnError = false;
tasks1.description = "Remove user from all Teams memberships";
tasks1.displayName = "Remove user from all Teams";
tasks1.executionSequence = 2;
tasks1.isEnabled = true;
tasks1.taskDefinitionId = "81f7b200-2816-4b3b-8c5d-dc556f07b024";
LinkedList<KeyValuePair> argumentsList1 = new LinkedList<KeyValuePair>();
tasks1.arguments = argumentsList1;
tasksList.add(tasks1);
Task tasks2 = new Task();
tasks2.continueOnError = false;
tasks2.description = "Delete user account in Azure AD";
tasks2.displayName = "Delete User Account";
tasks2.executionSequence = 3;
tasks2.isEnabled = true;
tasks2.taskDefinitionId = "8d18588d-9ad3-4c0f-99d0-ec215f0e3dff";
LinkedList<KeyValuePair> argumentsList2 = new LinkedList<KeyValuePair>();
tasks2.arguments = argumentsList2;
tasksList.add(tasks2);
TaskCollectionResponse taskCollectionResponse = new TaskCollectionResponse();
taskCollectionResponse.value = tasksList;
TaskCollectionPage taskCollectionPage = new TaskCollectionPage(taskCollectionResponse, null);
workflow.tasks = taskCollectionPage;

graphClient.identityGovernance().lifecycleWorkflows().workflows()
	.buildRequest()
	.post(workflow);

```