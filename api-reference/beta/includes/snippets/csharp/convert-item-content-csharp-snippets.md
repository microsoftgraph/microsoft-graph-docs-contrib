---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Content.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Format = "{format}";
});


```