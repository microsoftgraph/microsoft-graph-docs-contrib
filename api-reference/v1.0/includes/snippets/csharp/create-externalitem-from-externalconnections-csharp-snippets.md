---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.ExternalConnectors;

var requestBody = new ExternalItem
{
	Acl = new List<Acl>
	{
		new Acl
		{
			Type = AclType.User,
			Value = "e811976d-83df-4cbd-8b9b-5215b18aa874",
			AccessType = AccessType.Grant,
		},
		new Acl
		{
			Type = AclType.ExternalGroup,
			Value = "14m1b9c38qe647f6a",
			AccessType = AccessType.Deny,
		},
	},
	Properties = new Properties
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
	Content = new ExternalItemContent
	{
		Value = "Error in payment gateway...",
		Type = ExternalItemContentType.Text,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.External.Connections["{externalConnection-id}"].Items["{externalItem-id}"].PutAsync(requestBody);


```