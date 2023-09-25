---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalItem
{
	Acl = new List<Microsoft.Graph.Beta.Models.ExternalConnectors.Acl>
	{
		new Microsoft.Graph.Beta.Models.ExternalConnectors.Acl
		{
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.AclType.Everyone,
			Value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
			AccessType = Microsoft.Graph.Beta.Models.ExternalConnectors.AccessType.Grant,
		},
	},
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].PutAsync(requestBody);


```