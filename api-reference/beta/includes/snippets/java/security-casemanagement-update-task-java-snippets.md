---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.casemanagement.Task task = new com.microsoft.graph.beta.models.security.casemanagement.Task();
task.setOdataType("#microsoft.graph.security.caseManagement.task");
task.setDisplayName("Validate affected devices");
task.setStatus(com.microsoft.graph.beta.models.security.casemanagement.TaskStatus.New);
task.setDescription("Review affected devices and collect evidence");
task.setAssignedTo("user@contoso.com");
task.setClosingNotes("Investigation completed and documented");
OffsetDateTime dueDateTime = OffsetDateTime.parse("2026-06-29T17:54:43Z");
task.setDueDateTime(dueDateTime);
task.setPriority(com.microsoft.graph.beta.models.security.casemanagement.CaseTaskPriority.High);
task.setCategory(com.microsoft.graph.beta.models.security.casemanagement.CaseTaskCategory.Investigate);
com.microsoft.graph.models.security.casemanagement.Task result = graphClient.security().caseManagement().cases().byCaseId("{case-id}").tasks().byTaskId("{task-id}").patch(task);


```