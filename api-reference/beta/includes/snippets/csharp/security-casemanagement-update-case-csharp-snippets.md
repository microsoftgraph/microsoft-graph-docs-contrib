---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.CaseManagement;

var requestBody = new GenericCase
{
	OdataType = "#microsoft.graph.security.caseManagement.genericCase",
	DisplayName = "Case MS-001",
	Status = "Open",
	Description = "Investigating potential credential compromise.",
	AssignedTo = "john.doe@contoso.com",
	Priority = "high",
	DueDateTime = DateTimeOffset.Parse("2026-06-29T17:54:43Z"),
	ClosingNotes = "Follow up with the account owner.",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases["{case-id}"].PatchAsync(requestBody);


```