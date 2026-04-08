---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AgentInstance
{
	AgentCardManifest = new AgentCardManifest
	{
		OwnerIds = new List<string>
		{
			"0ef68a76-e247-41dd-947b-41282760a2ac",
		},
		OriginatingStore = "Copilot Studio",
		DisplayName = "Conditional Access Agent Card",
		Description = "Manages organizational conditional access policies",
		IconUrl = "https://example.com/icon.png",
		Provider = new AgentProvider
		{
			Organization = "Test Organization",
			Url = "https://test.com",
		},
		ProtocolVersion = "1.0",
		Version = "1.0.0",
		DocumentationUrl = "https://example.com/docs",
		Capabilities = new AgentCapabilities
		{
			Streaming = false,
			PushNotifications = false,
			StateTransitionHistory = true,
			Extensions = new List<AgentExtension>
			{
				new AgentExtension
				{
					Uri = "https://contoso.example.com/a2a/capabilities/secureMessaging",
					Description = null,
					Required = false,
					Params = new AgentExtensionParams
					{
						AdditionalData = new Dictionary<string, object>
						{
							{
								"useHttps" , true
							},
						},
					},
				},
			},
		},
		DefaultInputModes = new List<string>
		{
			"application/json",
		},
		DefaultOutputModes = new List<string>
		{
			"application/json",
			"text/html",
		},
		SupportsAuthenticatedExtendedCard = true,
		Skills = new List<AgentSkill>
		{
			new AgentSkill
			{
				Id = "threat-detection",
				DisplayName = "Threat Detection",
				Description = "Detect security threats in real-time",
				Tags = new List<string>
				{
					"security",
					"threat",
					"detection",
				},
				Examples = new List<string>
				{
					"Analyze this log for threats",
					"Check for malware",
				},
				InputModes = new List<string>
				{
					"application/json",
					"text/plain",
				},
				OutputModes = new List<string>
				{
					"application/json",
					"text/html",
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.AgentRegistry.AgentInstances["{agentInstance-id}"].PatchAsync(requestBody);


```