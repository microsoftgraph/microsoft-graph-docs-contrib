---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new WorkforceIntegration
{
	DisplayName = "ABCWorkforceIntegration",
	ApiVersion = 1,
	IsActive = true,
	Encryption = new WorkforceIntegrationEncryption
	{
		Protocol = WorkforceIntegrationEncryptionProtocol.SharedSecret,
		Secret = "My Secret",
	},
	Url = "https://ABCWorkforceIntegration.com/Contoso/",
	SupportedEntities = WorkforceIntegrationSupportedEntities.Shift | WorkforceIntegrationSupportedEntities.SwapRequest,
	EligibilityFilteringEnabledEntities = EligibilityFilteringEnabledEntities.SwapRequest,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Teamwork.WorkforceIntegrations.PostAsync(requestBody);


```