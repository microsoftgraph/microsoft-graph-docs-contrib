---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.CaseManagement;

var requestBody = new TaskObject
{
	OdataType = "#microsoft.graph.security.caseManagement.task",
	DisplayName = "Validate affected devices",
	Status = TaskStatus.New,
	Description = "Review affected devices and collect evidence",
	AssignedTo = "user@contoso.com",
	ClosingNotes = "Investigation completed and documented",
	DueDateTime = DateTimeOffset.Parse("2026-06-29T17:54:43Z"),
	Priority = CaseTaskPriority.High,
	Category = CaseTaskCategory.Investigate,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases["{case-id}"].Tasks["{task-id}"].PatchAsync(requestBody);


```