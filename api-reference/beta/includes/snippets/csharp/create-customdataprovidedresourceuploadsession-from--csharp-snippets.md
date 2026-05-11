---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CustomDataProvidedResourceUploadSession
{
	Source = "BuildingAccessData",
	Type = "#microsoft.graph.accessReviewDataUploadTriggerCallbackData",
	Data = new CustomExtensionData
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"accessReviewId" , "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b"
			},
			{
				"accessReviewInstanceId" , "6a9b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.Catalogs["{accessPackageCatalog-id}"].AccessPackageResources["{accessPackageResource-id}"].UploadSessions.PostAsync(requestBody);


```