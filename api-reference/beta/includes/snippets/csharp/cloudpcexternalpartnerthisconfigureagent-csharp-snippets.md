---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.ExternalPartners.Item.ConfigureAgent;
using Microsoft.Graph.Beta.Models;

var requestBody = new ConfigureAgentPostRequestBody
{
	AgentSetting = new CloudPcExternalPartnerAgentSetting
	{
		AgentUrl = "https://rmmExample.microsoft.com/agent/rmmExampleAgent.msi",
		AgentSha256 = "EC6AF1EA0367D16DDE6639A89A080A524CEBC4D4BEDFE00ED0CAC4B865A918D8",
		InstallParameters = new List<string>
		{
			"/quiet",
			"/norestart",
			"TOKENID=e69c1577-d465-4e57-af33-0ddea43feeb1",
		},
		AutoDeploymentEnabled = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.ExternalPartners["{cloudPcExternalPartner-id}"].ConfigureAgent.PostAsync(requestBody);


```