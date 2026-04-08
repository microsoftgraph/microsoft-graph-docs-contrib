---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AgentInstance
{
	Id = "Security Copilot Platform Agent: 00222",
	OwnerIds = new List<string>
	{
		"daf58b0e-44e1-433c-b6b0-ca70cae320b8",
		"b9108c41-d2d2-4e78-b073-92f57b752bd0",
	},
	ManagedBy = "719cc904-9700-4e08-9941-fd826cc84c60",
	OriginatingStore = "Microsoft Security Copilot",
	CreatedBy = "d47bffae-411a-4de9-8548-05e79bc01f0d",
	DisplayName = "Conditional Access Agent",
	SourceAgentId = "00222",
	AgentIdentityBlueprintId = "d0108c41-d2d2-4e78-b073-92f57b752bd0",
	AgentIdentityId = "dd108c41-d2d2-4e78-b073-92f57b752bd0",
	AgentUserId = "ee108c41-d2d2-4e78-b073-92f57b752bd0",
	CreatedDateTime = DateTimeOffset.Parse("2025-01-01T00:00:00.1234567Z"),
	LastModifiedDateTime = DateTimeOffset.Parse("2025-01-01T00:00:00.1234567Z"),
	Url = "https://conditional-access-agent.example.com/a2a/v1",
	PreferredTransport = "JSONRPC",
	AdditionalInterfaces = new List<AgentInterface>
	{
		new AgentInterface
		{
			Url = "https://conditional-access-agent.example.com/a2a/v1",
			Transport = "JSONRPC",
		},
		new AgentInterface
		{
			Url = "https://conditional-access-agent.example.com/a2a/grpc",
			Transport = "GRPC",
		},
		new AgentInterface
		{
			Url = "https://conditional-access-agent.example.com/a2a/json",
			Transport = "HTTP+JSON",
		},
	},
	Signatures = new List<AgentCardSignature>
	{
		new AgentCardSignature
		{
			Protected = "eyJhbGciOiJFUzI1NiIsImtpZCI6ImRpZDp3ZWI6Y29udG9zby5leGFtcGxlI2tleS0xIiwidHlwIjoiYWdlbnRjYXJkK2p3cyJ9",
			Signature = "xOSim9oMw_CdZM-qDhmwpB5fJcBx5I30yh-FZULd1j9ruPEUBnJzmfCynNfH1KgmJ2B7ulAYc7D2iIb-4Ul-8w",
			Header = new JwsHeader
			{
				AdditionalData = new Dictionary<string, object>
				{
					{
						"kidHint" , "contoso-key-1"
					},
					{
						"nonce" , "f1e9b6c3-2f3a-4a3a-b604-1f9af3f2a9c0"
					},
				},
			},
		},
	},
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
var result = await graphClient.AgentRegistry.AgentInstances.PostAsync(requestBody);


```