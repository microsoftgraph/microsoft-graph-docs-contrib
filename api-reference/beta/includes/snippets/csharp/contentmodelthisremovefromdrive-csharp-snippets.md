---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Sites.Item.ContentModels.Item.RemoveFromDrive;

var requestBody = new RemoveFromDrivePostRequestBody
{
	DriveId = "b!HEq8Q8ZfAkuMECqSaQFnJVwNMbAGLHhHnXMz1C32pozpolsoEg-MT47fBTiYcbnd",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Sites["{site-id}"].ContentModels["{contentModel-id}"].RemoveFromDrive.PostAsync(requestBody);


```