---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new DocumentProcessingJob
{
	OdataType = "#microsoft.graph.documentProcessingJob",
	JobType = DocumentProcessingJobType.File,
	ListItemUniqueId = "5955b119-99c1-4af9-97ed-3449e02de6f1",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Sites["{site-id}"].DocumentProcessingJobs.PostAsync(requestBody);


```