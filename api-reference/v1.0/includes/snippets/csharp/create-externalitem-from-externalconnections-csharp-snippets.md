---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Models.ExternalConnectors.ExternalItem
{
	Acl = new List<Microsoft.Graph.Models.ExternalConnectors.Acl>
	{
		new Microsoft.Graph.Models.ExternalConnectors.Acl
		{
			Type = Microsoft.Graph.Models.ExternalConnectors.AclType.User,
			Value = "e811976d-83df-4cbd-8b9b-5215b18aa874",
			AccessType = Microsoft.Graph.Models.ExternalConnectors.AccessType.Grant,
		},
		new Microsoft.Graph.Models.ExternalConnectors.Acl
		{
			Type = Microsoft.Graph.Models.ExternalConnectors.AclType.ExternalGroup,
			Value = "14m1b9c38qe647f6a",
			AccessType = Microsoft.Graph.Models.ExternalConnectors.AccessType.Deny,
		},
	},
	Properties = new Microsoft.Graph.Models.ExternalConnectors.Properties
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
	Content = new Microsoft.Graph.Models.ExternalConnectors.ExternalItemContent
	{
		Value = "Error in payment gateway...",
		Type = Microsoft.Graph.Models.ExternalConnectors.ExternalItemContentType.Text,
	},
};
var result = await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].PutAsync(requestBody);


```