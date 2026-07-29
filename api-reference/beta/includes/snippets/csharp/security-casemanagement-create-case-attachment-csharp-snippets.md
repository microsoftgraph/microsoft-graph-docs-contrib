---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security.CaseManagement;

var requestBody = new Attachment
{
	OdataType = "#microsoft.graph.security.caseManagement.attachment",
	DisplayName = "Case MS-001 Attachment",
	Description = "Screenshot of suspicious sign-in activity",
	FileSize = 1000L,
	FileExtension = "jpeg",
	ScanResult = AttachmentScanResult.NoThreatsFound,
	Origin = new AttachmentOrigin
	{
		OdataType = "microsoft.graph.security.caseManagement.attachmentOrigin",
		ResourceId = "987757fb-6ef4-1061-17e7-9de0d088e1dd",
		ResourceType = AttachmentOriginType.Case,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.CaseManagement.Cases["{case-id}"].Attachments.PostAsync(requestBody);


```