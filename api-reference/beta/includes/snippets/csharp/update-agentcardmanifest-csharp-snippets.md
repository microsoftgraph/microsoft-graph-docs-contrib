---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AgentCardManifest
{
	OdataType = "#microsoft.graph.agentCardManifest",
	OwnerIds = new List<string>
	{
		"String",
	},
	ManagedBy = "String",
	OriginatingStore = "String",
	CreatedBy = "String",
	ProtocolVersion = "String",
	DisplayName = "String",
	Description = "String",
	IconUrl = "String",
	Provider = new AgentProvider
	{
		OdataType = "microsoft.graph.agentProvider",
	},
	Version = "String",
	DocumentationUrl = "String",
	Capabilities = new AgentCapabilities
	{
		OdataType = "microsoft.graph.agentCapabilities",
	},
	SecuritySchemes = new SecuritySchemes
	{
		OdataType = "microsoft.graph.securitySchemes",
	},
	Security = new List<SecurityRequirement>
	{
		new SecurityRequirement
		{
			OdataType = "microsoft.graph.securityRequirement",
		},
	},
	DefaultInputModes = new List<string>
	{
		"String",
	},
	DefaultOutputModes = new List<string>
	{
		"String",
	},
	Skills = new List<AgentSkill>
	{
		new AgentSkill
		{
			OdataType = "microsoft.graph.agentSkill",
		},
	},
	SupportsAuthenticatedExtendedCard = boolean,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AgentRegistry.AgentCardManifests["{agentCardManifest-id}"].PatchAsync(requestBody);


```