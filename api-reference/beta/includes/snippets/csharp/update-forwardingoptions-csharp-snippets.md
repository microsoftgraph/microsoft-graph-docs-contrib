---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.ForwardingOptions
{
	SkipDnsLookupState = Microsoft.Graph.Beta.Models.Networkaccess.Status.Disabled,
};
var result = await graphClient.NetworkAccess.Settings.ForwardingOptions.PatchAsync(requestBody);


```