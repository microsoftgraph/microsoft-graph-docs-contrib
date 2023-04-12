---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalItem
{
	Acl = new List<Microsoft.Graph.Beta.Models.ExternalConnectors.Acl>
	{
		new Microsoft.Graph.Beta.Models.ExternalConnectors.Acl
		{
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.AclType.User,
			Value = "e811976d-83df-4cbd-8b9b-5215b18aa874",
			AccessType = Microsoft.Graph.Beta.Models.ExternalConnectors.AccessType.Grant,
			IdentitySource = Microsoft.Graph.Beta.Models.ExternalConnectors.IdentitySourceType.AzureActiveDirectory,
		},
		new Microsoft.Graph.Beta.Models.ExternalConnectors.Acl
		{
			Type = Microsoft.Graph.Beta.Models.ExternalConnectors.AclType.Group,
			Value = "14m1b9c38qe647f6a",
			AccessType = Microsoft.Graph.Beta.Models.ExternalConnectors.AccessType.Deny,
			IdentitySource = Microsoft.Graph.Beta.Models.ExternalConnectors.IdentitySourceType.External,
		},
	},
	Properties = new Microsoft.Graph.Beta.Models.ExternalConnectors.Properties
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"title" , "Error in the payment gateway"
			},
			{
				"priority" , 1
			},
			{
				"assignee" , "john@contoso.com"
			},
		},
	},
	Content = new Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalItemContent
	{
		Value = "Error in payment gateway...",
		Type = Microsoft.Graph.Beta.Models.ExternalConnectors.ExternalItemContentType.Text,
	},
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].PutAsync(requestBody);


```