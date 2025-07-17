---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new FileContentThreatSubmission
{
	OdataType = "#microsoft.graph.security.fileContentThreatSubmission",
	Category = SubmissionCategory.Malware,
	FileName = "test.html",
	FileContent = "UmVjZWl2ZWQ6IGZyb20gTVcyUFIwME1CMDMxNC5uYW1wcmQwMC.....",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.ThreatSubmission.FileThreats.PostAsync(requestBody);


```