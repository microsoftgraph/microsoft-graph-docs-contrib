---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CustomDataProvidedResourceUploadSession
{
	OdataType = "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
	Data = new CustomExtensionData
	{
		OdataType = "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"reviewDefinitionId" , "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b"
			},
			{
				"reviewInstanceId" , "15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d"
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.Catalogs["{accessPackageCatalog-id}"].AccessPackageResources["{accessPackageResource-id}"].UploadSessions.PostAsync(requestBody);


```