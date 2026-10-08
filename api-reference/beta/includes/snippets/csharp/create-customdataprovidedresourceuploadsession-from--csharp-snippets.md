---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Graph.Beta.Models.CustomDataProvidedResourcePayloads;

var requestBody = new CustomDataProvidedResourceAccessReviewUploadSession
{
	OdataType = "#microsoft.graph.customDataProvidedResourceAccessReviewUploadSession",
	Data = new AccessReviewContextData
	{
		OdataType = "#microsoft.graph.customDataProvidedResourcePayloads.accessReviewContextData",
		ReviewDefinitionId = "9e4b1c6f-2a3d-4f8e-9b7a-5c1e2d3f4a6b",
		ReviewInstanceId = "15eeb4df-8a4d-4f8e-9b7a-6b3e1c7f5a9d",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.Catalogs["{accessPackageCatalog-id}"].AccessPackageResources["{accessPackageResource-id}"].UploadSessions.PostAsync(requestBody);


```