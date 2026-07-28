---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.CaseManagement;

var requestBody = new IncidentCase
{
	OdataType = "#microsoft.graph.security.caseManagement.incidentCase",
	DisplayName = "Incident Case MS-002",
	Status = "InProgress",
	Classification = IncidentClassification.TruePositive,
	Determination = IncidentDetermination.Phishing,
	Severity = IncidentSeverity.High,
	Summary = "Credential phishing campaign affecting multiple users.",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases["{case-id}"].PatchAsync(requestBody);


```