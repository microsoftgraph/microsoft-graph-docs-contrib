---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new CloudFirewallRule
{
	OdataType = "#microsoft.graph.networkaccess.cloudFirewallRule",
	Name = "Block outbound to risky destinations",
	Description = "Block traffic to specific IPs on common ports",
	Priority = 100L,
	Action = CloudFirewallAction.Block,
	Settings = new CloudFirewallRuleSettings
	{
		Status = SecurityRuleStatus.Enabled,
	},
	MatchingConditions = new CloudFirewallMatchingConditions
	{
		Sources = new CloudFirewallSourceMatching
		{
			Addresses = new List<CloudFirewallSourceAddress>
			{
				new CloudFirewallSourceIpAddress
				{
					OdataType = "#microsoft.graph.networkaccess.cloudFirewallSourceIpAddress",
					Values = new List<string>
					{
						"192.168.1.1",
						"192.168.0.0/16",
						"172.16.0.0-172.16.255.255",
					},
				},
			},
			Ports = new List<string>
			{
				"80",
				"443",
				"445-447",
			},
		},
		Destinations = new CloudFirewallDestinationMatching
		{
			Addresses = new List<CloudFirewallDestinationAddress>
			{
				new CloudFirewallDestinationIpAddress
				{
					OdataType = "#microsoft.graph.networkaccess.cloudFirewallDestinationIpAddress",
					Values = new List<string>
					{
						"10.0.0.1",
					},
				},
			},
			Ports = new List<string>
			{
				"80",
				"443",
				"445-447",
			},
			Protocols = CloudFirewallProtocol.Tcp,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.CloudFirewallPolicies["{cloudFirewallPolicy-id}"].PolicyRules.PostAsync(requestBody);


```