---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.Networkaccess.ConditionalAccessSettings
{
	SignalingStatus = Microsoft.Graph.Beta.Models.Networkaccess.Status.Disabled,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.context" , "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess"
		},
	},
};
var result = await graphClient.NetworkAccess.Settings.ConditionalAccess.PatchAsync(requestBody);


```